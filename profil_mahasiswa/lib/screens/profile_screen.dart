import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      SizedBox(height: 16),
                      // Header profil terpisah
                      ProfileHeader(
                        name: 'Nama Mahasiswa',
                        nim: '21.11.0000',
                      ),
                      SizedBox(height: 16),
                      // Social media row
                      SocialMediaRow(),
                      SizedBox(height: 16),
                      // Detail informasi profil
                      ProfileInfo(
                        programStudi: 'S1 Informatika',
                        email: 'email@students.amikom.ac.id',
                        lokasi: 'Yogyakarta, Indonesia',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Tombol aksi terpisah
              const ActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
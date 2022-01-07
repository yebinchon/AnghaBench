
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initvals_band; int initvals; int pcm; int ucode; } ;
struct b43_wldev {TYPE_1__ fw; int fw_load_complete; } ;


 int b43_do_release_fw (int *) ;
 int complete (int *) ;

__attribute__((used)) static void b43_release_firmware(struct b43_wldev *dev)
{
 complete(&dev->fw_load_complete);
 b43_do_release_fw(&dev->fw.ucode);
 b43_do_release_fw(&dev->fw.pcm);
 b43_do_release_fw(&dev->fw.initvals);
 b43_do_release_fw(&dev->fw.initvals_band);
}

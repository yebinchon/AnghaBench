
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * initvals_band; int * initvals; int * pcm; int * ucode; } ;
struct b43legacy_wldev {TYPE_1__ fw; } ;


 int release_firmware (int *) ;

__attribute__((used)) static void b43legacy_release_firmware(struct b43legacy_wldev *dev)
{
 release_firmware(dev->fw.ucode);
 dev->fw.ucode = ((void*)0);
 release_firmware(dev->fw.pcm);
 dev->fw.pcm = ((void*)0);
 release_firmware(dev->fw.initvals);
 dev->fw.initvals = ((void*)0);
 release_firmware(dev->fw.initvals_band);
 dev->fw.initvals_band = ((void*)0);
}

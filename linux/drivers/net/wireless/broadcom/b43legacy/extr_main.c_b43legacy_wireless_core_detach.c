
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;


 int b43legacy_release_firmware (struct b43legacy_wldev*) ;

__attribute__((used)) static void b43legacy_wireless_core_detach(struct b43legacy_wldev *dev)
{


 b43legacy_release_firmware(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {struct b43legacy_wl* wl; } ;
struct b43legacy_wl {int beacon0_uploaded; } ;


 int * __b43legacy_ratetable ;
 int b43legacy_write_beacon_template (struct b43legacy_wldev*,int,int) ;
 int b43legacy_write_probe_resp_template (struct b43legacy_wldev*,int,int,int *) ;

__attribute__((used)) static void b43legacy_upload_beacon0(struct b43legacy_wldev *dev)
{
 struct b43legacy_wl *wl = dev->wl;

 if (wl->beacon0_uploaded)
  return;
 b43legacy_write_beacon_template(dev, 0x68, 0x18);


 b43legacy_write_probe_resp_template(dev, 0x268, 0x4A,
          &__b43legacy_ratetable[3]);
 wl->beacon0_uploaded = 1;
}

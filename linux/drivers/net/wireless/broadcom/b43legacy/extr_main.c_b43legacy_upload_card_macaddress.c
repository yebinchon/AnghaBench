
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_wldev {TYPE_1__* wl; } ;
struct TYPE_2__ {int mac_addr; } ;


 int B43legacy_MACFILTER_SELF ;
 int b43legacy_macfilter_set (struct b43legacy_wldev*,int ,int ) ;
 int b43legacy_write_mac_bssid_templates (struct b43legacy_wldev*) ;

__attribute__((used)) static void b43legacy_upload_card_macaddress(struct b43legacy_wldev *dev)
{
 b43legacy_write_mac_bssid_templates(dev);
 b43legacy_macfilter_set(dev, B43legacy_MACFILTER_SELF,
    dev->wl->mac_addr);
}

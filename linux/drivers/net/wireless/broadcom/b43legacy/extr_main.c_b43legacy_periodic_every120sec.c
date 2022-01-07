
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_phy {scalar_t__ type; int rev; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;


 scalar_t__ B43legacy_PHYTYPE_G ;
 int b43legacy_mac_enable (struct b43legacy_wldev*) ;
 int b43legacy_mac_suspend (struct b43legacy_wldev*) ;
 int b43legacy_phy_lo_g_measure (struct b43legacy_wldev*) ;

__attribute__((used)) static void b43legacy_periodic_every120sec(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;

 if (phy->type != B43legacy_PHYTYPE_G || phy->rev < 2)
  return;

 b43legacy_mac_suspend(dev);
 b43legacy_phy_lo_g_measure(dev);
 b43legacy_mac_enable(dev);
}

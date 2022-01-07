
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int b43_nphy_gain_ctl_workarounds_rev19 (struct b43_wldev*) ;
 int b43_nphy_gain_ctl_workarounds_rev1_2 (struct b43_wldev*) ;
 int b43_nphy_gain_ctl_workarounds_rev3 (struct b43_wldev*) ;
 int b43_nphy_gain_ctl_workarounds_rev7 (struct b43_wldev*) ;

__attribute__((used)) static void b43_nphy_gain_ctl_workarounds(struct b43_wldev *dev)
{
 if (dev->phy.rev >= 19)
  b43_nphy_gain_ctl_workarounds_rev19(dev);
 else if (dev->phy.rev >= 7)
  b43_nphy_gain_ctl_workarounds_rev7(dev);
 else if (dev->phy.rev >= 3)
  b43_nphy_gain_ctl_workarounds_rev3(dev);
 else
  b43_nphy_gain_ctl_workarounds_rev1_2(dev);
}

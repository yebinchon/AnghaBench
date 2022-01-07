
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;



__attribute__((used)) static void b43_nphy_gain_ctl_workarounds_rev7(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;

 switch (phy->rev) {

 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int rev; int radio_rev; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b2056_inittabs_pts {int dummy; } ;


 struct b2056_inittabs_pts const b2056_inittab_phy_rev3 ;
 struct b2056_inittabs_pts const b2056_inittab_phy_rev4 ;
 struct b2056_inittabs_pts const b2056_inittab_radio_rev11 ;
 struct b2056_inittabs_pts const b2056_inittab_radio_rev5 ;
 struct b2056_inittabs_pts const b2056_inittab_radio_rev6 ;
 struct b2056_inittabs_pts const b2056_inittab_radio_rev7_9 ;
 struct b2056_inittabs_pts const b2056_inittab_radio_rev8 ;

__attribute__((used)) static const struct b2056_inittabs_pts
*b43_nphy_get_inittabs_rev3(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;

 switch (dev->phy.rev) {
 case 3:
  return &b2056_inittab_phy_rev3;
 case 4:
  return &b2056_inittab_phy_rev4;
 default:
  switch (phy->radio_rev) {
  case 5:
   return &b2056_inittab_radio_rev5;
  case 6:
   return &b2056_inittab_radio_rev6;
  case 7:
  case 9:
   return &b2056_inittab_radio_rev7_9;
  case 8:
   return &b2056_inittab_radio_rev8;
  case 11:
   return &b2056_inittab_radio_rev11;
  }
 }

 return ((void*)0);
}

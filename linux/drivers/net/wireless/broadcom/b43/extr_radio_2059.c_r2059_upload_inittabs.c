
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 scalar_t__ ARRAY_SIZE (scalar_t__**) ;
 int B43_WARN_ON (int) ;
 scalar_t__ R2059_ALL ;
 int b43_radio_write (struct b43_wldev*,scalar_t__,scalar_t__) ;
 scalar_t__** r2059_phy_rev1_init ;

void r2059_upload_inittabs(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 u16 *table = ((void*)0);
 u16 size, i;

 switch (phy->rev) {
 case 1:
  table = r2059_phy_rev1_init[0];
  size = ARRAY_SIZE(r2059_phy_rev1_init);
  break;
 default:
  B43_WARN_ON(1);
  return;
 }

 for (i = 0; i < size; i++, table += 2)
  b43_radio_write(dev, R2059_ALL | table[0], table[1]);
}

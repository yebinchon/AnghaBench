
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct b43_phy {int rev; int radio_rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 scalar_t__ ARRAY_SIZE (scalar_t__**) ;
 int B43_WARN_ON (int) ;
 int b43_radio_write (struct b43_wldev*,scalar_t__,scalar_t__) ;
 scalar_t__** r2057_rev14_init ;
 scalar_t__** r2057_rev4_init ;
 scalar_t__** r2057_rev5_init ;
 scalar_t__** r2057_rev5a_init ;
 scalar_t__** r2057_rev7_init ;
 scalar_t__** r2057_rev9_init ;

void r2057_upload_inittabs(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 u16 *table = ((void*)0);
 u16 size, i;

 switch (phy->rev) {
 case 7:
  table = r2057_rev4_init[0];
  size = ARRAY_SIZE(r2057_rev4_init);
  break;
 case 8:
  if (phy->radio_rev == 5) {
   table = r2057_rev5_init[0];
   size = ARRAY_SIZE(r2057_rev5_init);
  } else if (phy->radio_rev == 7) {
   table = r2057_rev7_init[0];
   size = ARRAY_SIZE(r2057_rev7_init);
  }
  break;
 case 9:
  if (phy->radio_rev == 5) {
   table = r2057_rev5a_init[0];
   size = ARRAY_SIZE(r2057_rev5a_init);
  }
  break;
 case 16:
  if (phy->radio_rev == 9) {
   table = r2057_rev9_init[0];
   size = ARRAY_SIZE(r2057_rev9_init);
  }
  break;
 case 17:
  if (phy->radio_rev == 14) {
   table = r2057_rev14_init[0];
   size = ARRAY_SIZE(r2057_rev14_init);
  }
  break;
 }

 B43_WARN_ON(!table);

 if (table) {
  for (i = 0; i < size; i++, table += 2)
   b43_radio_write(dev, table[0], table[1]);
 }
}

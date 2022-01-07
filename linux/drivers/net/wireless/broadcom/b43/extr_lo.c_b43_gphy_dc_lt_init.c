
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct b43_phy {struct b43_phy_g* g; } ;
struct b43_wldev {int wl; struct b43_phy phy; } ;
struct TYPE_5__ {int len; struct b43_rfatt* list; } ;
struct TYPE_4__ {int len; struct b43_bbatt* list; } ;
struct b43_txpower_lo_control {int power_vector; int* dc_lt; TYPE_2__ rfatt_list; TYPE_1__ bbatt_list; } ;
struct b43_rfatt {int dummy; } ;
struct b43_phy_g {struct b43_txpower_lo_control* lo_control; } ;
struct TYPE_6__ {scalar_t__ i; scalar_t__ q; } ;
struct b43_lo_calib {TYPE_3__ ctl; } ;
struct b43_bbatt {int dummy; } ;


 int B43_DC_LT_SIZE ;
 int B43_WARN_ON (int) ;
 int BUILD_BUG_ON (int) ;
 struct b43_lo_calib* b43_calibrate_lo_setting (struct b43_wldev*,struct b43_bbatt const*,struct b43_rfatt const*) ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;
 int b43warn (int ,char*) ;
 int kfree (struct b43_lo_calib*) ;

void b43_gphy_dc_lt_init(struct b43_wldev *dev, bool update_all)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;
 struct b43_txpower_lo_control *lo = gphy->lo_control;
 int i;
 int rf_offset, bb_offset;
 const struct b43_rfatt *rfatt;
 const struct b43_bbatt *bbatt;
 u64 power_vector;
 bool table_changed = 0;

 BUILD_BUG_ON(B43_DC_LT_SIZE != 32);
 B43_WARN_ON(lo->rfatt_list.len * lo->bbatt_list.len > 64);

 power_vector = lo->power_vector;
 if (!update_all && !power_vector)
  return;



 b43_mac_suspend(dev);

 for (i = 0; i < B43_DC_LT_SIZE * 2; i++) {
  struct b43_lo_calib *cal;
  int idx;
  u16 val;

  if (!update_all && !(power_vector & (((u64)1ULL) << i)))
   continue;


  bb_offset = i / lo->rfatt_list.len;
  rf_offset = i % lo->rfatt_list.len;
  bbatt = &(lo->bbatt_list.list[bb_offset]);
  rfatt = &(lo->rfatt_list.list[rf_offset]);

  cal = b43_calibrate_lo_setting(dev, bbatt, rfatt);
  if (!cal) {
   b43warn(dev->wl, "LO: Could not "
    "calibrate DC table entry\n");
   continue;
  }

  val = (u8)(cal->ctl.q);
  val |= ((u8)(cal->ctl.i)) << 4;
  kfree(cal);


  idx = i / 2;

  if (i % 2) {

   lo->dc_lt[idx] = (lo->dc_lt[idx] & 0x00FF)
      | ((val & 0x00FF) << 8);
  } else {

   lo->dc_lt[idx] = (lo->dc_lt[idx] & 0xFF00)
      | (val & 0x00FF);
  }
  table_changed = 1;
 }
 if (table_changed) {

  for (i = 0; i < B43_DC_LT_SIZE; i++)
   b43_phy_write(dev, 0x3A0 + i, lo->dc_lt[i]);
 }
 b43_mac_enable(dev);
}

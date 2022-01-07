
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int rev; int radio_rev; } ;
struct b43_wldev {int wl; struct b43_phy phy; } ;
typedef int s16 ;


 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int const* b43_ntab_rf_pwr_offset_2057_rev14_2g ;
 int const* b43_ntab_rf_pwr_offset_2057_rev9_2g ;
 int const* b43_ntab_rf_pwr_offset_2057_rev9_5g ;
 int b43err (int ,char*) ;

const s16 *b43_ntab_get_rf_pwr_offset_table(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;

 if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ) {
  switch (phy->rev) {
  case 17:
   if (phy->radio_rev == 14)
    return b43_ntab_rf_pwr_offset_2057_rev14_2g;
   break;
  case 16:
   if (phy->radio_rev == 9)
    return b43_ntab_rf_pwr_offset_2057_rev9_2g;
   break;
  }

  b43err(dev->wl,
         "No 2GHz RF power table available for this device\n");
  return ((void*)0);
 } else {
  switch (phy->rev) {
  case 16:
   if (phy->radio_rev == 9)
    return b43_ntab_rf_pwr_offset_2057_rev9_5g;
   break;
  }

  b43err(dev->wl,
         "No 5GHz RF power table available for this device\n");
  return ((void*)0);
 }
}

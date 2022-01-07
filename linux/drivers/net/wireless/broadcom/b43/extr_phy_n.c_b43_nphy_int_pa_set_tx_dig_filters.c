
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rev; int channel; } ;
struct b43_wldev {TYPE_1__ phy; int wl; } ;
typedef int s16 ;


 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ b43_current_band (int ) ;
 scalar_t__ b43_is_40mhz (struct b43_wldev*) ;
 int b43_nphy_pa_set_tx_dig_filter (struct b43_wldev*,int const,int const*) ;
 int const** tbl_tx_filter_coef_rev4 ;

__attribute__((used)) static void b43_nphy_int_pa_set_tx_dig_filters(struct b43_wldev *dev)
{

 static const u16 offset[] = { 0x186, 0x195, 0x2C5 };
 static const s16 dig_filter_phy_rev16[] = {
  -375, 136, -407, 208, -1527,
  956, 93, 186, 93, 230,
  -44, 230, 201, -191, 201,
 };
 int i;

 for (i = 0; i < 3; i++)
  b43_nphy_pa_set_tx_dig_filter(dev, offset[i],
           tbl_tx_filter_coef_rev4[i]);


 if (dev->phy.rev == 16)
  b43_nphy_pa_set_tx_dig_filter(dev, 0x186, dig_filter_phy_rev16);


 if (dev->phy.rev == 17) {
  b43_nphy_pa_set_tx_dig_filter(dev, 0x186, dig_filter_phy_rev16);
  b43_nphy_pa_set_tx_dig_filter(dev, 0x195,
           tbl_tx_filter_coef_rev4[1]);
 }

 if (b43_is_40mhz(dev)) {
  b43_nphy_pa_set_tx_dig_filter(dev, 0x186,
           tbl_tx_filter_coef_rev4[3]);
 } else {
  if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ)
   b43_nphy_pa_set_tx_dig_filter(dev, 0x186,
            tbl_tx_filter_coef_rev4[5]);
  if (dev->phy.channel == 14)
   b43_nphy_pa_set_tx_dig_filter(dev, 0x186,
            tbl_tx_filter_coef_rev4[6]);
 }
}

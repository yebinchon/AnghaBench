
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct lcn_tx_gains {int gm_gain; int pga_gain; int pad_gain; scalar_t__ dac_gain; } ;
struct TYPE_3__ {TYPE_2__* lcn; } ;
struct b43_wldev {int wl; TYPE_1__ phy; } ;
struct TYPE_4__ {int hw_pwr_ctl_capable; } ;


 int B43_SENSE_TEMP ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int b43_phy_lcn_sense_setup (struct b43_wldev*,int ) ;
 int b43_phy_lcn_set_bbmult (struct b43_wldev*,int) ;
 int b43_phy_lcn_set_tx_gain (struct b43_wldev*,struct lcn_tx_gains*) ;
 int b43err (int ,char*) ;

__attribute__((used)) static void b43_phy_lcn_tx_pwr_ctl_init(struct b43_wldev *dev)
{
 struct lcn_tx_gains tx_gains;
 u8 bbmult;

 b43_mac_suspend(dev);

 if (!dev->phy.lcn->hw_pwr_ctl_capable) {
  if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ) {
   tx_gains.gm_gain = 4;
   tx_gains.pga_gain = 12;
   tx_gains.pad_gain = 12;
   tx_gains.dac_gain = 0;
   bbmult = 150;
  } else {
   tx_gains.gm_gain = 7;
   tx_gains.pga_gain = 15;
   tx_gains.pad_gain = 14;
   tx_gains.dac_gain = 0;
   bbmult = 150;
  }
  b43_phy_lcn_set_tx_gain(dev, &tx_gains);
  b43_phy_lcn_set_bbmult(dev, bbmult);
  b43_phy_lcn_sense_setup(dev, B43_SENSE_TEMP);
 } else {
  b43err(dev->wl, "TX power control not supported for this HW\n");
 }

 b43_mac_enable(dev);
}

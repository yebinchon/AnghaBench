
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpphy_tx_gains {int gm; int pad; int pga; scalar_t__ dac; } ;
struct b43_wldev {int wl; } ;


 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int lpphy_set_bb_mult (struct b43_wldev*,int) ;
 int lpphy_set_tx_gains (struct b43_wldev*,struct lpphy_tx_gains) ;

__attribute__((used)) static void lpphy_tx_pctl_init_sw(struct b43_wldev *dev)
{
 struct lpphy_tx_gains gains;

 if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ) {
  gains.gm = 4;
  gains.pad = 12;
  gains.pga = 12;
  gains.dac = 0;
 } else {
  gains.gm = 7;
  gains.pad = 14;
  gains.pga = 15;
  gains.dac = 0;
 }
 lpphy_set_tx_gains(dev, gains);
 lpphy_set_bb_mult(dev, 150);
}

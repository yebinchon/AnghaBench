
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct b43_phy {int rev; TYPE_3__* chandef; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; int wl; } ;
struct b43_phy_n_iq_comp {int dummy; } ;
struct TYPE_4__ {int * txcal_coeffs_5G; int * txcal_radio_regs_5G; struct b43_phy_n_iq_comp rxcal_coeffs_5G; int * txcal_coeffs_2G; int * txcal_radio_regs_2G; struct b43_phy_n_iq_comp rxcal_coeffs_2G; } ;
struct b43_chanspec {int channel_type; int center_freq; } ;
struct b43_phy_n {scalar_t__ hang_avoid; TYPE_1__ cal_cache; struct b43_chanspec iqcal_chanspec_5G; struct b43_chanspec iqcal_chanspec_2G; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct TYPE_5__ {int center_freq; } ;


 int B43_NTAB16 (int,int) ;
 scalar_t__ NL80211_BAND_2GHZ ;
 int R2057_TX0_LOFT_COARSE_I ;
 int R2057_TX0_LOFT_COARSE_Q ;
 int R2057_TX0_LOFT_FINE_I ;
 int R2057_TX0_LOFT_FINE_Q ;
 int R2057_TX1_LOFT_COARSE_I ;
 int R2057_TX1_LOFT_COARSE_Q ;
 int R2057_TX1_LOFT_FINE_I ;
 int R2057_TX1_LOFT_FINE_Q ;
 scalar_t__ b43_current_band (int ) ;
 int b43_nphy_rx_iq_coeffs (struct b43_wldev*,int,struct b43_phy_n_iq_comp*) ;
 int b43_nphy_stay_in_carrier_search (struct b43_wldev*,int) ;
 int b43_ntab_read_bulk (struct b43_wldev*,int ,int,int *) ;
 int b43_radio_read (struct b43_wldev*,int) ;
 int cfg80211_get_chandef_type (TYPE_3__*) ;

__attribute__((used)) static void b43_nphy_save_cal(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_n *nphy = dev->phy.n;

 struct b43_phy_n_iq_comp *rxcal_coeffs = ((void*)0);
 u16 *txcal_radio_regs = ((void*)0);
 struct b43_chanspec *iqcal_chanspec;
 u16 *table = ((void*)0);

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 1);

 if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ) {
  rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_2G;
  txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_2G;
  iqcal_chanspec = &nphy->iqcal_chanspec_2G;
  table = nphy->cal_cache.txcal_coeffs_2G;
 } else {
  rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_5G;
  txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_5G;
  iqcal_chanspec = &nphy->iqcal_chanspec_5G;
  table = nphy->cal_cache.txcal_coeffs_5G;
 }

 b43_nphy_rx_iq_coeffs(dev, 0, rxcal_coeffs);

 if (phy->rev >= 19) {

 } else if (phy->rev >= 7) {
  txcal_radio_regs[0] = b43_radio_read(dev,
           R2057_TX0_LOFT_FINE_I);
  txcal_radio_regs[1] = b43_radio_read(dev,
           R2057_TX0_LOFT_FINE_Q);
  txcal_radio_regs[4] = b43_radio_read(dev,
           R2057_TX0_LOFT_COARSE_I);
  txcal_radio_regs[5] = b43_radio_read(dev,
           R2057_TX0_LOFT_COARSE_Q);
  txcal_radio_regs[2] = b43_radio_read(dev,
           R2057_TX1_LOFT_FINE_I);
  txcal_radio_regs[3] = b43_radio_read(dev,
           R2057_TX1_LOFT_FINE_Q);
  txcal_radio_regs[6] = b43_radio_read(dev,
           R2057_TX1_LOFT_COARSE_I);
  txcal_radio_regs[7] = b43_radio_read(dev,
           R2057_TX1_LOFT_COARSE_Q);
 } else if (phy->rev >= 3) {
  txcal_radio_regs[0] = b43_radio_read(dev, 0x2021);
  txcal_radio_regs[1] = b43_radio_read(dev, 0x2022);
  txcal_radio_regs[2] = b43_radio_read(dev, 0x3021);
  txcal_radio_regs[3] = b43_radio_read(dev, 0x3022);
  txcal_radio_regs[4] = b43_radio_read(dev, 0x2023);
  txcal_radio_regs[5] = b43_radio_read(dev, 0x2024);
  txcal_radio_regs[6] = b43_radio_read(dev, 0x3023);
  txcal_radio_regs[7] = b43_radio_read(dev, 0x3024);
 } else {
  txcal_radio_regs[0] = b43_radio_read(dev, 0x8B);
  txcal_radio_regs[1] = b43_radio_read(dev, 0xBA);
  txcal_radio_regs[2] = b43_radio_read(dev, 0x8D);
  txcal_radio_regs[3] = b43_radio_read(dev, 0xBC);
 }
 iqcal_chanspec->center_freq = dev->phy.chandef->chan->center_freq;
 iqcal_chanspec->channel_type =
    cfg80211_get_chandef_type(dev->phy.chandef);
 b43_ntab_read_bulk(dev, B43_NTAB16(15, 80), 8, table);

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 0);
}

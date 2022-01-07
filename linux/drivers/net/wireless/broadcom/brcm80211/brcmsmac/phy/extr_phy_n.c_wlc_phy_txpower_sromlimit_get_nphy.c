
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct brcms_phy {int* tx_srom_max_rate_2g; int* tx_srom_max_rate_5g_mid; int* tx_srom_max_rate_5g_low; int* tx_srom_max_rate_5g_hi; } ;






 int wlc_phy_get_chan_freq_range_nphy (struct brcms_phy*,int ) ;

void
wlc_phy_txpower_sromlimit_get_nphy(struct brcms_phy *pi, uint chan, u8 *max_pwr,
       u8 txp_rate_idx)
{
 u8 chan_freq_range;

 chan_freq_range = wlc_phy_get_chan_freq_range_nphy(pi, chan);
 switch (chan_freq_range) {
 case 131:
  *max_pwr = pi->tx_srom_max_rate_2g[txp_rate_idx];
  break;
 case 128:
  *max_pwr = pi->tx_srom_max_rate_5g_mid[txp_rate_idx];
  break;
 case 129:
  *max_pwr = pi->tx_srom_max_rate_5g_low[txp_rate_idx];
  break;
 case 130:
  *max_pwr = pi->tx_srom_max_rate_5g_hi[txp_rate_idx];
  break;
 default:
  *max_pwr = pi->tx_srom_max_rate_2g[txp_rate_idx];
  break;
 }

 return;
}

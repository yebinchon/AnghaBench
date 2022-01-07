
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {void (* txpwrrecalc ) (struct brcms_phy*) ;} ;
struct brcms_phy {int mcs40_po; int mcs20_po; size_t* tx_user_target; size_t* txpwr_limit; int txpwr_percent; size_t* txpwr_env_limit; size_t* tx_power_offset; size_t tx_power_max; size_t tx_power_min; size_t tx_power_max_rate_ind; size_t* tx_power_target; TYPE_1__ pi_fptr; int hwpwrctrl; scalar_t__ user_txpwr_at_rfport; scalar_t__ tx_srom_max_2g; scalar_t__* tx_srom_max_rate_2g; int radio_chanspec; } ;


 int CHSPEC2BAND (int ) ;
 int CHSPEC_CHANNEL (int ) ;
 scalar_t__ CHSPEC_CTL_SB (int ) ;
 scalar_t__ CHSPEC_IS40 (int ) ;
 scalar_t__ ISLCNPHY (struct brcms_phy*) ;
 scalar_t__ ISNPHY (struct brcms_phy*) ;
 int TXP_FIRST_SISO_MCS_20 ;
 int TXP_LAST_OFDM ;
 int TXP_LAST_SISO_MCS_20 ;
 int TXP_NUM_RATES ;
 scalar_t__ WL_CHANSPEC_CTL_SB_NONE ;
 scalar_t__ WL_CHANSPEC_CTL_SB_UPPER ;
 int lower_20_sb (int ) ;
 size_t max (size_t,size_t) ;
 int memset (size_t*,int ,int) ;
 size_t min (size_t,size_t) ;
 void stub1 (struct brcms_phy*) ;
 int upper_20_sb (int ) ;
 int wlc_phy_txpower_sromlimit (struct brcms_phy_pub*,int ,size_t*,size_t*,size_t) ;
 int wlc_phy_upd_env_txpwr_rate_limits (struct brcms_phy*,int) ;
 scalar_t__ wlc_user_txpwr_antport_to_rfport (struct brcms_phy*,int ,int,size_t) ;

void wlc_phy_txpower_recalc_target(struct brcms_phy *pi)
{
 u8 maxtxpwr, mintxpwr, rate, pactrl;
 uint target_chan;
 u8 tx_pwr_target[TXP_NUM_RATES];
 u8 tx_pwr_max = 0;
 u8 tx_pwr_min = 255;
 u8 tx_pwr_max_rate_ind = 0;
 u8 max_num_rate;
 u8 start_rate = 0;
 u16 chspec;
 u32 band = CHSPEC2BAND(pi->radio_chanspec);
 void (*txpwr_recalc_fn)(struct brcms_phy *) = ((void*)0);

 chspec = pi->radio_chanspec;
 if (CHSPEC_CTL_SB(chspec) == WL_CHANSPEC_CTL_SB_NONE)
  target_chan = CHSPEC_CHANNEL(chspec);
 else if (CHSPEC_CTL_SB(chspec) == WL_CHANSPEC_CTL_SB_UPPER)
  target_chan = upper_20_sb(CHSPEC_CHANNEL(chspec));
 else
  target_chan = lower_20_sb(CHSPEC_CHANNEL(chspec));

 pactrl = 0;
 if (ISLCNPHY(pi)) {
  u32 offset_mcs, i;

  if (CHSPEC_IS40(pi->radio_chanspec)) {
   offset_mcs = pi->mcs40_po;
   for (i = TXP_FIRST_SISO_MCS_20;
        i <= TXP_LAST_SISO_MCS_20; i++) {
    pi->tx_srom_max_rate_2g[i - 8] =
     pi->tx_srom_max_2g -
     ((offset_mcs & 0xf) * 2);
    offset_mcs >>= 4;
   }
  } else {
   offset_mcs = pi->mcs20_po;
   for (i = TXP_FIRST_SISO_MCS_20;
        i <= TXP_LAST_SISO_MCS_20; i++) {
    pi->tx_srom_max_rate_2g[i - 8] =
     pi->tx_srom_max_2g -
     ((offset_mcs & 0xf) * 2);
    offset_mcs >>= 4;
   }
  }
 }

 max_num_rate = ((ISNPHY(pi)) ? (TXP_NUM_RATES) :
   ((ISLCNPHY(pi)) ?
    (TXP_LAST_SISO_MCS_20 + 1) : (TXP_LAST_OFDM + 1)));

 wlc_phy_upd_env_txpwr_rate_limits(pi, band);

 for (rate = start_rate; rate < max_num_rate; rate++) {

  tx_pwr_target[rate] = pi->tx_user_target[rate];

  if (pi->user_txpwr_at_rfport)
   tx_pwr_target[rate] +=
    wlc_user_txpwr_antport_to_rfport(pi,
         target_chan,
         band,
         rate);

  wlc_phy_txpower_sromlimit((struct brcms_phy_pub *) pi,
       target_chan,
       &mintxpwr, &maxtxpwr, rate);

  maxtxpwr = min(maxtxpwr, pi->txpwr_limit[rate]);

  maxtxpwr = (maxtxpwr > pactrl) ? (maxtxpwr - pactrl) : 0;

  maxtxpwr = (maxtxpwr > 6) ? (maxtxpwr - 6) : 0;

  maxtxpwr = min(maxtxpwr, tx_pwr_target[rate]);

  if (pi->txpwr_percent <= 100)
   maxtxpwr = (maxtxpwr * pi->txpwr_percent) / 100;

  tx_pwr_target[rate] = max(maxtxpwr, mintxpwr);

  tx_pwr_target[rate] =
   min(tx_pwr_target[rate], pi->txpwr_env_limit[rate]);

  if (tx_pwr_target[rate] > tx_pwr_max)
   tx_pwr_max_rate_ind = rate;

  tx_pwr_max = max(tx_pwr_max, tx_pwr_target[rate]);
  tx_pwr_min = min(tx_pwr_min, tx_pwr_target[rate]);
 }

 memset(pi->tx_power_offset, 0, sizeof(pi->tx_power_offset));
 pi->tx_power_max = tx_pwr_max;
 pi->tx_power_min = tx_pwr_min;
 pi->tx_power_max_rate_ind = tx_pwr_max_rate_ind;
 for (rate = 0; rate < max_num_rate; rate++) {

  pi->tx_power_target[rate] = tx_pwr_target[rate];

  if (!pi->hwpwrctrl || ISNPHY(pi))
   pi->tx_power_offset[rate] =
    pi->tx_power_max - pi->tx_power_target[rate];
  else
   pi->tx_power_offset[rate] =
    pi->tx_power_target[rate] - pi->tx_power_min;
 }

 txpwr_recalc_fn = pi->pi_fptr.txpwrrecalc;
 if (txpwr_recalc_fn)
  (*txpwr_recalc_fn)(pi);
}

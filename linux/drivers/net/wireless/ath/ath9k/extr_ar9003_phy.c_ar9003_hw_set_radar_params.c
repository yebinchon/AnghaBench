
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw_radar_conf {scalar_t__ ext_channel; int radar_inband; int pulse_inband_step; int pulse_maxlen; int pulse_inband; int pulse_rssi; int pulse_height; int radar_rssi; int fir_power; } ;
struct ath_hw {int curchan; int ini_dfs; } ;


 int AR_PHY_RADAR_0 ;
 int AR_PHY_RADAR_0_ENA ;
 int AR_PHY_RADAR_0_FFT_ENA ;
 int AR_PHY_RADAR_0_FIRPWR ;
 int AR_PHY_RADAR_0_HEIGHT ;
 int AR_PHY_RADAR_0_INBAND ;
 int AR_PHY_RADAR_0_PRSSI ;
 int AR_PHY_RADAR_0_RRSSI ;
 int AR_PHY_RADAR_1 ;
 int AR_PHY_RADAR_1_BLOCK_CHECK ;
 int AR_PHY_RADAR_1_MAXLEN ;
 int AR_PHY_RADAR_1_MAX_RRSSI ;
 int AR_PHY_RADAR_1_RELPWR_THRESH ;
 int AR_PHY_RADAR_1_RELSTEP_THRESH ;
 int AR_PHY_RADAR_EXT ;
 int AR_PHY_RADAR_EXT_ENA ;
 scalar_t__ AR_SREV_9300 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9580 (struct ath_hw*) ;
 scalar_t__ IS_CHAN_HT40 (int ) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int REG_WRITE_ARRAY (int *,int,unsigned int) ;
 int SM (int ,int) ;

__attribute__((used)) static void ar9003_hw_set_radar_params(struct ath_hw *ah,
           struct ath_hw_radar_conf *conf)
{
 unsigned int regWrites = 0;
 u32 radar_0 = 0, radar_1;

 if (!conf) {
  REG_CLR_BIT(ah, AR_PHY_RADAR_0, AR_PHY_RADAR_0_ENA);
  return;
 }

 radar_0 |= AR_PHY_RADAR_0_ENA | AR_PHY_RADAR_0_FFT_ENA;
 radar_0 |= SM(conf->fir_power, AR_PHY_RADAR_0_FIRPWR);
 radar_0 |= SM(conf->radar_rssi, AR_PHY_RADAR_0_RRSSI);
 radar_0 |= SM(conf->pulse_height, AR_PHY_RADAR_0_HEIGHT);
 radar_0 |= SM(conf->pulse_rssi, AR_PHY_RADAR_0_PRSSI);
 radar_0 |= SM(conf->pulse_inband, AR_PHY_RADAR_0_INBAND);

 radar_1 = REG_READ(ah, AR_PHY_RADAR_1);
 radar_1 &= ~(AR_PHY_RADAR_1_MAXLEN | AR_PHY_RADAR_1_RELSTEP_THRESH |
       AR_PHY_RADAR_1_RELPWR_THRESH);
 radar_1 |= AR_PHY_RADAR_1_MAX_RRSSI;
 radar_1 |= AR_PHY_RADAR_1_BLOCK_CHECK;
 radar_1 |= SM(conf->pulse_maxlen, AR_PHY_RADAR_1_MAXLEN);
 radar_1 |= SM(conf->pulse_inband_step, AR_PHY_RADAR_1_RELSTEP_THRESH);
 radar_1 |= SM(conf->radar_inband, AR_PHY_RADAR_1_RELPWR_THRESH);

 REG_WRITE(ah, AR_PHY_RADAR_0, radar_0);
 REG_WRITE(ah, AR_PHY_RADAR_1, radar_1);
 if (conf->ext_channel)
  REG_SET_BIT(ah, AR_PHY_RADAR_EXT, AR_PHY_RADAR_EXT_ENA);
 else
  REG_CLR_BIT(ah, AR_PHY_RADAR_EXT, AR_PHY_RADAR_EXT_ENA);

 if (AR_SREV_9300(ah) || AR_SREV_9340(ah) || AR_SREV_9580(ah)) {
  REG_WRITE_ARRAY(&ah->ini_dfs,
    IS_CHAN_HT40(ah->curchan) ? 2 : 1, regWrites);
 }
}

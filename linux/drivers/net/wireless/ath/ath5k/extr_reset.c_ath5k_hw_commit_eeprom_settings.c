
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct ieee80211_channel {int center_freq; scalar_t__ hw_value; } ;
struct TYPE_4__ {int txp_cck_ofdm_pwr_delta; int txp_cck_ofdm_gainf_delta; } ;
struct ath5k_eeprom_info {int ee_cck_ofdm_power_delta; int ee_scaled_cck_delta; int ee_cck_ofdm_gain_delta; int* ee_tx_end2xpa_disable; int* ee_tx_frm2xpa_enable; scalar_t__* ee_q_cal; scalar_t__* ee_i_cal; scalar_t__* ee_false_detect; scalar_t__* ee_thr_62; scalar_t__* ee_tx_end2xlna_enable; scalar_t__* ee_margin_tx_rx; scalar_t__* ee_pga_desired_size; scalar_t__* ee_adc_desired_size; scalar_t__* ee_atn_tx_rx; scalar_t__* ee_switch_settling; scalar_t__* ee_margin_tx_rx_turbo; scalar_t__* ee_pga_desired_size_turbo; scalar_t__* ee_adc_desired_size_turbo; scalar_t__* ee_atn_tx_rx_turbo; scalar_t__* ee_switch_settling_turbo; int * ee_noise_floor_thr; } ;
struct TYPE_3__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_phy_revision; scalar_t__ ah_bwmode; scalar_t__ ah_ee_version; TYPE_2__ ah_txpower; TYPE_1__ ah_capabilities; } ;
typedef int s16 ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_BWMODE_40MHZ ;
 scalar_t__ AR5K_EEPROM_VERSION_4_0 ;
 scalar_t__ AR5K_EEPROM_VERSION_4_1 ;
 scalar_t__ AR5K_EEPROM_VERSION_5_0 ;
 scalar_t__ AR5K_EEPROM_VERSION_5_1 ;
 scalar_t__ AR5K_INIT_CYCRSSI_THR1 ;
 scalar_t__ AR5K_MODE_11G ;
 int AR5K_PHY_DESIRED_SIZE ;
 int AR5K_PHY_DESIRED_SIZE_ADC ;
 int AR5K_PHY_DESIRED_SIZE_PGA ;
 int AR5K_PHY_GAIN ;
 int AR5K_PHY_GAIN_2GHZ ;
 int AR5K_PHY_GAIN_2GHZ_MARGIN_TXRX ;
 int AR5K_PHY_GAIN_TXRX_ATTEN ;
 int AR5K_PHY_HEAVY_CLIP_ENABLE ;
 int AR5K_PHY_IQ ;
 int AR5K_PHY_IQ_CORR_ENABLE ;
 int AR5K_PHY_IQ_CORR_Q_I_COFF ;
 int AR5K_PHY_IQ_CORR_Q_Q_COFF ;
 int AR5K_PHY_NF ;
 int AR5K_PHY_NFTHRES ;
 int AR5K_PHY_NF_SVAL (int ) ;
 int AR5K_PHY_NF_THRESH62 ;
 int AR5K_PHY_OFDM_SELFCORR ;
 int AR5K_PHY_OFDM_SELFCORR_CYPWR_THR1 ;
 int AR5K_PHY_RF_CTL3 ;
 int AR5K_PHY_RF_CTL3_TXE2XLNA_ON ;
 int AR5K_PHY_RF_CTL4 ;
 int AR5K_PHY_SETTLING ;
 int AR5K_PHY_SETTLING_SWITCH ;
 int AR5K_PHY_TX_PWR_ADJ ;
 int AR5K_PHY_TX_PWR_ADJ_CCK_GAIN_DELTA ;
 int AR5K_PHY_TX_PWR_ADJ_CCK_PCDAC_INDEX ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_SM (int,int ) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,scalar_t__) ;
 scalar_t__ AR5K_SREV_PHY_5212A ;
 size_t ath5k_eeprom_mode_from_channel (struct ath5k_hw*,struct ieee80211_channel*) ;
 scalar_t__ ath5k_hw_chan_has_spur_noise (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int ath5k_hw_set_antenna_switch (struct ath5k_hw*,size_t) ;

__attribute__((used)) static void
ath5k_hw_commit_eeprom_settings(struct ath5k_hw *ah,
  struct ieee80211_channel *channel)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 s16 cck_ofdm_pwr_delta;
 u8 ee_mode;


 if (ah->ah_version == AR5K_AR5210)
  return;

 ee_mode = ath5k_eeprom_mode_from_channel(ah, channel);


 if (channel->center_freq == 2484)
  cck_ofdm_pwr_delta =
   ((ee->ee_cck_ofdm_power_delta -
   ee->ee_scaled_cck_delta) * 2) / 10;
 else
  cck_ofdm_pwr_delta =
   (ee->ee_cck_ofdm_power_delta * 2) / 10;



 if (ah->ah_phy_revision >= AR5K_SREV_PHY_5212A) {
  if (channel->hw_value == AR5K_MODE_11G)
   ath5k_hw_reg_write(ah,
   AR5K_REG_SM((ee->ee_cck_ofdm_gain_delta * -1),
    AR5K_PHY_TX_PWR_ADJ_CCK_GAIN_DELTA) |
   AR5K_REG_SM((cck_ofdm_pwr_delta * -1),
    AR5K_PHY_TX_PWR_ADJ_CCK_PCDAC_INDEX),
    AR5K_PHY_TX_PWR_ADJ);
  else
   ath5k_hw_reg_write(ah, 0, AR5K_PHY_TX_PWR_ADJ);
 } else {


  ah->ah_txpower.txp_cck_ofdm_pwr_delta = cck_ofdm_pwr_delta;
  ah->ah_txpower.txp_cck_ofdm_gainf_delta =
      ee->ee_cck_ofdm_gain_delta;
 }



 ath5k_hw_set_antenna_switch(ah, ee_mode);


 ath5k_hw_reg_write(ah,
  AR5K_PHY_NF_SVAL(ee->ee_noise_floor_thr[ee_mode]),
  AR5K_PHY_NFTHRES);

 if ((ah->ah_bwmode == AR5K_BWMODE_40MHZ) &&
 (ah->ah_ee_version >= AR5K_EEPROM_VERSION_5_0)) {

  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_SETTLING,
    AR5K_PHY_SETTLING_SWITCH,
    ee->ee_switch_settling_turbo[ee_mode]);


  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_GAIN,
    AR5K_PHY_GAIN_TXRX_ATTEN,
    ee->ee_atn_tx_rx_turbo[ee_mode]);


  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_DESIRED_SIZE,
    AR5K_PHY_DESIRED_SIZE_ADC,
    ee->ee_adc_desired_size_turbo[ee_mode]);

  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_DESIRED_SIZE,
    AR5K_PHY_DESIRED_SIZE_PGA,
    ee->ee_pga_desired_size_turbo[ee_mode]);


  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_GAIN_2GHZ,
    AR5K_PHY_GAIN_2GHZ_MARGIN_TXRX,
    ee->ee_margin_tx_rx_turbo[ee_mode]);

 } else {

  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_SETTLING,
    AR5K_PHY_SETTLING_SWITCH,
    ee->ee_switch_settling[ee_mode]);


  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_GAIN,
    AR5K_PHY_GAIN_TXRX_ATTEN,
    ee->ee_atn_tx_rx[ee_mode]);


  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_DESIRED_SIZE,
    AR5K_PHY_DESIRED_SIZE_ADC,
    ee->ee_adc_desired_size[ee_mode]);

  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_DESIRED_SIZE,
    AR5K_PHY_DESIRED_SIZE_PGA,
    ee->ee_pga_desired_size[ee_mode]);


  if (ah->ah_ee_version >= AR5K_EEPROM_VERSION_4_1)
   AR5K_REG_WRITE_BITS(ah, AR5K_PHY_GAIN_2GHZ,
    AR5K_PHY_GAIN_2GHZ_MARGIN_TXRX,
    ee->ee_margin_tx_rx[ee_mode]);
 }


 ath5k_hw_reg_write(ah,
  (ee->ee_tx_end2xpa_disable[ee_mode] << 24) |
  (ee->ee_tx_end2xpa_disable[ee_mode] << 16) |
  (ee->ee_tx_frm2xpa_enable[ee_mode] << 8) |
  (ee->ee_tx_frm2xpa_enable[ee_mode]), AR5K_PHY_RF_CTL4);


 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_RF_CTL3,
   AR5K_PHY_RF_CTL3_TXE2XLNA_ON,
   ee->ee_tx_end2xlna_enable[ee_mode]);


 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_NF,
   AR5K_PHY_NF_THRESH62,
   ee->ee_thr_62[ee_mode]);




 if (ath5k_hw_chan_has_spur_noise(ah, channel))
  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_OFDM_SELFCORR,
    AR5K_PHY_OFDM_SELFCORR_CYPWR_THR1,
    AR5K_INIT_CYCRSSI_THR1 +
    ee->ee_false_detect[ee_mode]);
 else
  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_OFDM_SELFCORR,
    AR5K_PHY_OFDM_SELFCORR_CYPWR_THR1,
    AR5K_INIT_CYCRSSI_THR1);



 if (ah->ah_ee_version >= AR5K_EEPROM_VERSION_4_0) {
  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_CORR_Q_I_COFF,
       ee->ee_i_cal[ee_mode]);
  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_CORR_Q_Q_COFF,
       ee->ee_q_cal[ee_mode]);
  AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_CORR_ENABLE);
 }


 if (ah->ah_ee_version >= AR5K_EEPROM_VERSION_5_1)
  ath5k_hw_reg_write(ah, 0, AR5K_PHY_HEAVY_CLIP_ENABLE);
}

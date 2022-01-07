
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_channel {int center_freq; scalar_t__ band; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_phy_revision; scalar_t__ ah_radio; int ah_mac_version; scalar_t__ ah_radio_5ghz_revision; scalar_t__ ah_mac_srev; scalar_t__ ah_bwmode; } ;


 int AR5K_AGC_SETTLING_TURBO ;
 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_AR5212 ;
 scalar_t__ AR5K_BWMODE_40MHZ ;
 int AR5K_DIAG_SW_5211 ;
 int AR5K_DIAG_SW_ECO_ENABLE ;
 int AR5K_PHY_ADC_CTL ;
 int AR5K_PHY_ADC_CTL_INBUFGAIN_OFF ;
 int AR5K_PHY_ADC_CTL_INBUFGAIN_ON ;
 int AR5K_PHY_ADC_CTL_PWD_ADC_OFF ;
 int AR5K_PHY_ADC_CTL_PWD_DAC_OFF ;
 int AR5K_PHY_BLUETOOTH ;
 int AR5K_PHY_CCKTXCTL ;
 int AR5K_PHY_CCKTXCTL_WORLD ;
 int AR5K_PHY_DAG_CCK_CTL ;
 int AR5K_PHY_DAG_CCK_CTL_EN_RSSI_THR ;
 int AR5K_PHY_DAG_CCK_CTL_RSSI_THR ;
 int AR5K_PHY_FAST_ADC ;
 int AR5K_PHY_FRAME_CTL ;
 int AR5K_PHY_FRAME_CTL_5210 ;
 int AR5K_PHY_FRAME_CTL_5211 ;
 int AR5K_PHY_FRAME_CTL_INI ;
 int AR5K_PHY_FRAME_CTL_WIN_LEN ;
 int AR5K_PHY_SCAL ;
 int AR5K_PHY_SCAL_32MHZ_5311 ;
 int AR5K_PHY_SETTLING ;
 int AR5K_PHY_SETTLING_AGC ;
 int AR5K_PHY_SETTLING_SWITCH ;
 int AR5K_PHY_TURBO_MODE ;
 int AR5K_PHY_TURBO_SHORT ;
 int AR5K_QCUDCU_CLKGT ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_SM (int,int ) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;
 scalar_t__ AR5K_RF2317 ;
 scalar_t__ AR5K_RF5112 ;
 scalar_t__ AR5K_RF5413 ;
 int AR5K_SEQ_MASK ;
 int AR5K_SREV_AR2417 ;
 scalar_t__ AR5K_SREV_AR5211 ;
 scalar_t__ AR5K_SREV_AR5414 ;
 scalar_t__ AR5K_SREV_AR5424 ;
 scalar_t__ AR5K_SREV_PHY_5212A ;
 scalar_t__ AR5K_SREV_PHY_5212B ;
 scalar_t__ AR5K_SREV_RAD_5112A ;
 int AR5K_SWITCH_SETTLING_TURBO ;
 int AR5K_TXCFG ;
 int AR5K_TXCFG_DCU_DBL_BUF_DIS ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

__attribute__((used)) static void
ath5k_hw_tweak_initval_settings(struct ath5k_hw *ah,
    struct ieee80211_channel *channel)
{
 if (ah->ah_version == AR5K_AR5212 &&
     ah->ah_phy_revision >= AR5K_SREV_PHY_5212A) {


  ath5k_hw_reg_write(ah,
    (AR5K_REG_SM(2,
    AR5K_PHY_ADC_CTL_INBUFGAIN_OFF) |
    AR5K_REG_SM(2,
    AR5K_PHY_ADC_CTL_INBUFGAIN_ON) |
    AR5K_PHY_ADC_CTL_PWD_DAC_OFF |
    AR5K_PHY_ADC_CTL_PWD_ADC_OFF),
    AR5K_PHY_ADC_CTL);




  AR5K_REG_DISABLE_BITS(ah, AR5K_PHY_DAG_CCK_CTL,
    AR5K_PHY_DAG_CCK_CTL_EN_RSSI_THR);

  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_DAG_CCK_CTL,
   AR5K_PHY_DAG_CCK_CTL_RSSI_THR, 2);


  ath5k_hw_reg_write(ah, 0x0000000f, AR5K_SEQ_MASK);
 }


 if (ah->ah_phy_revision >= AR5K_SREV_PHY_5212B)
  ath5k_hw_reg_write(ah, 0, AR5K_PHY_BLUETOOTH);


 if (ah->ah_phy_revision > AR5K_SREV_PHY_5212B)
  AR5K_REG_DISABLE_BITS(ah, AR5K_TXCFG,
    AR5K_TXCFG_DCU_DBL_BUF_DIS);


 if ((ah->ah_radio == AR5K_RF5413) ||
  (ah->ah_radio == AR5K_RF2317) ||
  (ah->ah_mac_version == (AR5K_SREV_AR2417 >> 4))) {
  u32 fast_adc = 1;

  if (channel->center_freq == 2462 ||
  channel->center_freq == 2467)
   fast_adc = 0;


  if (ath5k_hw_reg_read(ah, AR5K_PHY_FAST_ADC) != fast_adc)
    ath5k_hw_reg_write(ah, fast_adc,
      AR5K_PHY_FAST_ADC);
 }


 if (ah->ah_radio == AR5K_RF5112 &&
   ah->ah_radio_5ghz_revision <
   AR5K_SREV_RAD_5112A) {
  u32 data;
  ath5k_hw_reg_write(ah, AR5K_PHY_CCKTXCTL_WORLD,
    AR5K_PHY_CCKTXCTL);
  if (channel->band == NL80211_BAND_5GHZ)
   data = 0xffb81020;
  else
   data = 0xffb80d20;
  ath5k_hw_reg_write(ah, data, AR5K_PHY_FRAME_CTL);
 }

 if (ah->ah_mac_srev < AR5K_SREV_AR5211) {

  ath5k_hw_reg_write(ah, 0, AR5K_QCUDCU_CLKGT);

  ath5k_hw_reg_write(ah, AR5K_PHY_SCAL_32MHZ_5311,
      AR5K_PHY_SCAL);

  AR5K_REG_ENABLE_BITS(ah, AR5K_DIAG_SW_5211,
     AR5K_DIAG_SW_ECO_ENABLE);
 }

 if (ah->ah_bwmode) {



  if (ah->ah_bwmode == AR5K_BWMODE_40MHZ) {

   AR5K_REG_WRITE_BITS(ah, AR5K_PHY_SETTLING,
      AR5K_PHY_SETTLING_AGC,
      AR5K_AGC_SETTLING_TURBO);




   if (ah->ah_version == AR5K_AR5212)
    AR5K_REG_WRITE_BITS(ah, AR5K_PHY_SETTLING,
      AR5K_PHY_SETTLING_SWITCH,
      AR5K_SWITCH_SETTLING_TURBO);

   if (ah->ah_version == AR5K_AR5210) {

    ath5k_hw_reg_write(ah,
     (AR5K_PHY_FRAME_CTL_INI |
     AR5K_PHY_TURBO_MODE |
     AR5K_PHY_TURBO_SHORT | 0x2020),
     AR5K_PHY_FRAME_CTL_5210);
   }

  } else if ((ah->ah_mac_srev >= AR5K_SREV_AR5424) &&
  (ah->ah_mac_srev <= AR5K_SREV_AR5414)) {
   AR5K_REG_WRITE_BITS(ah, AR5K_PHY_FRAME_CTL_5211,
      AR5K_PHY_FRAME_CTL_WIN_LEN,
      3);
  }
 } else if (ah->ah_version == AR5K_AR5210) {

  ath5k_hw_reg_write(ah, (AR5K_PHY_FRAME_CTL_INI | 0x1020),
      AR5K_PHY_FRAME_CTL_5210);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath9k_hw_aic {int* aic_sram; int aic_caled_chan; int aic_cal_state; } ;
struct ath9k_hw_mci {int config; } ;
struct TYPE_2__ {struct ath9k_hw_aic aic; struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;


 int AIC_CAL_STATE_ERROR ;
 int AR_PHY_AIC_CAL_CH_VALID_RESET ;
 int AR_PHY_AIC_CAL_ENABLE ;
 int AR_PHY_AIC_CTRL_0_B1 ;
 int AR_PHY_AIC_SRAM_ADDR_B1 ;
 int AR_PHY_AIC_SRAM_DATA_B1 ;
 int ATH_AIC_MAX_BT_CHANNEL ;
 int ATH_AIC_SRAM_AUTO_INCREMENT ;
 int ATH_AIC_SRAM_CAL_OFFSET ;
 int ATH_MCI_CONFIG_AIC_CAL_NUM_CHAN ;
 int MCI ;
 int MS (int ,int ) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ar9003_aic_cal_done (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static u8 ar9003_aic_cal_continue(struct ath_hw *ah, bool cal_once)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;
 struct ath9k_hw_aic *aic = &ah->btcoex_hw.aic;
 int i, num_chan;

 num_chan = MS(mci_hw->config, ATH_MCI_CONFIG_AIC_CAL_NUM_CHAN);

 if (!num_chan) {
  aic->aic_cal_state = AIC_CAL_STATE_ERROR;
  return aic->aic_cal_state;
 }

 if (cal_once) {
  for (i = 0; i < 10000; i++) {
   if ((REG_READ(ah, AR_PHY_AIC_CTRL_0_B1) &
        AR_PHY_AIC_CAL_ENABLE) == 0)
    break;

   udelay(100);
  }
 }





 if ((REG_READ(ah, AR_PHY_AIC_CTRL_0_B1) &
      AR_PHY_AIC_CAL_ENABLE) != 0) {
  ath_dbg(common, MCI, "AIC cal is not done after 40ms");
  goto exit;
 }

 REG_WRITE(ah, AR_PHY_AIC_SRAM_ADDR_B1,
    (ATH_AIC_SRAM_CAL_OFFSET | ATH_AIC_SRAM_AUTO_INCREMENT));

 for (i = 0; i < ATH_AIC_MAX_BT_CHANNEL; i++) {
  u32 value;

  value = REG_READ(ah, AR_PHY_AIC_SRAM_DATA_B1);

  if (value & 0x01) {
   if (aic->aic_sram[i] == 0)
    aic->aic_caled_chan++;

   aic->aic_sram[i] = value;

   if (!cal_once)
    break;
  }
 }

 if ((aic->aic_caled_chan >= num_chan) || cal_once) {
  ar9003_aic_cal_done(ah);
 } else {

  REG_CLR_BIT(ah, AR_PHY_AIC_CTRL_0_B1, AR_PHY_AIC_CAL_ENABLE);
  REG_SET_BIT(ah, AR_PHY_AIC_CTRL_0_B1,
       AR_PHY_AIC_CAL_CH_VALID_RESET);
  REG_SET_BIT(ah, AR_PHY_AIC_CTRL_0_B1, AR_PHY_AIC_CAL_ENABLE);
 }
exit:
 return aic->aic_cal_state;

}

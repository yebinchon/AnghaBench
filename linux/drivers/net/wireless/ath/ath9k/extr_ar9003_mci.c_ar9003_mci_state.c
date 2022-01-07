
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath9k_hw_mci {int gpm_len; int gpm_idx; int update_2g5g; int config; int last_recovery; int query_bt; int need_flush_btinfo; int unhalt_bt_gpm; void* bt_state; int ready; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int AR_BTCOEX_CTRL ;
 int AR_BTCOEX_CTRL_MCI_MODE_EN ;
 int AR_GLB_GPIO_CONTROL ;
 int AR_MCI_GPM_1 ;
 int AR_MCI_GPM_WRITE_PTR ;
 int AR_MCI_RX_LAST_SCHD_MSG_INDEX ;
 int AR_MCI_RX_REMOTE_SLEEP ;
 int AR_MCI_RX_STATUS ;
 int ATH_MCI_CONFIG_DISABLE_FTP_STOMP ;
 int ATH_MCI_CONFIG_MCI_OBS_GPIO ;
 int ATH_MCI_CONFIG_MCI_OBS_MASK ;
 int MCI ;
 void* MCI_BT_AWAKE ;
 void* MCI_BT_SLEEP ;
 int MCI_GPM_COEX_QUERY_BT_TOPOLOGY ;
 int MCI_RECOVERY_DUR_TSF ;
 int MS (int,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 int ar9003_aic_cal_reset (struct ath_hw*) ;
 int ar9003_aic_calibration (struct ath_hw*) ;
 int ar9003_aic_calibration_single (struct ath_hw*) ;
 int ar9003_aic_start_normal (struct ath_hw*) ;
 int ar9003_mci_2g5g_switch (struct ath_hw*,int) ;
 int ar9003_mci_observation_set_up (struct ath_hw*) ;
 int ar9003_mci_prep_interface (struct ath_hw*) ;
 int ar9003_mci_reset_req_wakeup (struct ath_hw*) ;
 int ar9003_mci_send_coex_bt_status_query (struct ath_hw*,int,int ) ;
 int ar9003_mci_send_coex_halt_bt_gpm (struct ath_hw*,int,int) ;
 int ar9003_mci_send_coex_version_query (struct ath_hw*,int) ;
 int ar9003_mci_send_coex_version_response (struct ath_hw*,int) ;
 int ar9003_mci_send_coex_wlan_channels (struct ath_hw*,int) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_gettsf32 (struct ath_hw*) ;
 int ath9k_hw_is_aic_enabled (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*) ;

u32 ar9003_mci_state(struct ath_hw *ah, u32 state_type)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 value = 0, tsf;
 u8 query_type;

 switch (state_type) {
 case 139:
  if (mci->ready) {
   value = REG_READ(ah, AR_BTCOEX_CTRL);

   if ((value == 0xdeadbeef) || (value == 0xffffffff))
    value = 0;
  }
  value &= AR_BTCOEX_CTRL_MCI_MODE_EN;
  break;
 case 138:
  value = MS(REG_READ(ah, AR_MCI_GPM_1), AR_MCI_GPM_WRITE_PTR);

  if (value < mci->gpm_len)
   mci->gpm_idx = value;
  else
   mci->gpm_idx = 0;
  break;
 case 137:
  value = MS(REG_READ(ah, AR_MCI_RX_STATUS),
        AR_MCI_RX_LAST_SCHD_MSG_INDEX);

  value <<= 4;
  break;
 case 133:
  value = MS(REG_READ(ah, AR_MCI_RX_STATUS),
      AR_MCI_RX_REMOTE_SLEEP) ?
   MCI_BT_SLEEP : MCI_BT_AWAKE;
  break;
 case 128:
  mci->bt_state = MCI_BT_AWAKE;
  ar9003_mci_send_coex_version_query(ah, 1);
  ar9003_mci_send_coex_wlan_channels(ah, 1);

  if (mci->unhalt_bt_gpm)
   ar9003_mci_send_coex_halt_bt_gpm(ah, 0, 1);

  ar9003_mci_2g5g_switch(ah, 0);
  break;
 case 132:
  ar9003_mci_reset_req_wakeup(ah);
  mci->update_2g5g = 1;

  if (mci->config & ATH_MCI_CONFIG_MCI_OBS_MASK) {

   if ((REG_READ(ah, AR_GLB_GPIO_CONTROL) &
        ATH_MCI_CONFIG_MCI_OBS_GPIO) !=
       ATH_MCI_CONFIG_MCI_OBS_GPIO) {
    ar9003_mci_observation_set_up(ah);
   }
  }
  break;
 case 129:
  ar9003_mci_send_coex_version_response(ah, 1);
  break;
 case 130:
  ar9003_mci_send_coex_version_query(ah, 1);
  break;
 case 131:
  query_type = MCI_GPM_COEX_QUERY_BT_TOPOLOGY;
  ar9003_mci_send_coex_bt_status_query(ah, 1, query_type);
  break;
 case 134:
  tsf = ath9k_hw_gettsf32(ah);
  if ((tsf - mci->last_recovery) <= MCI_RECOVERY_DUR_TSF) {
   ath_dbg(ath9k_hw_common(ah), MCI,
    "(MCI) ignore Rx recovery\n");
   break;
  }
  ath_dbg(ath9k_hw_common(ah), MCI, "(MCI) RECOVER RX\n");
  mci->last_recovery = tsf;
  ar9003_mci_prep_interface(ah);
  mci->query_bt = 1;
  mci->need_flush_btinfo = 1;
  ar9003_mci_send_coex_wlan_channels(ah, 1);
  ar9003_mci_2g5g_switch(ah, 0);
  break;
 case 135:
  value = !(mci->config & ATH_MCI_CONFIG_DISABLE_FTP_STOMP);
  break;
 case 136:
  value = (!mci->unhalt_bt_gpm && mci->need_flush_btinfo) ? 1 : 0;
  mci->need_flush_btinfo = 0;
  break;
 case 143:
  if (ath9k_hw_is_aic_enabled(ah))
   value = ar9003_aic_calibration(ah);
  break;
 case 140:
  if (ath9k_hw_is_aic_enabled(ah))
   ar9003_aic_start_normal(ah);
  break;
 case 142:
  if (ath9k_hw_is_aic_enabled(ah))
   value = ar9003_aic_cal_reset(ah);
  break;
 case 141:
  if (ath9k_hw_is_aic_enabled(ah))
   value = ar9003_aic_calibration_single(ah);
  break;
 default:
  break;
 }

 return value;
}

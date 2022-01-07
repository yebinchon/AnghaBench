
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath9k_hw_mci {scalar_t__ bt_state; int config; int wlan_cal_done; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int ATH_MCI_CONFIG_DISABLE_MCI_CAL ;
 scalar_t__ MCI_BT_AWAKE ;
 int MCI_GPM ;
 int MCI_GPM_SET_CAL_TYPE (scalar_t__*,int ) ;
 int MCI_GPM_WLAN_CAL_DONE ;
 size_t MCI_GPM_WLAN_CAL_W_SEQUENCE ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,scalar_t__*,int,int,int) ;

void ar9003_mci_init_cal_done(struct ath_hw *ah)
{
 struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;
 u32 pld[4] = {0, 0, 0, 0};

 if ((mci_hw->bt_state != MCI_BT_AWAKE) ||
     (mci_hw->config & ATH_MCI_CONFIG_DISABLE_MCI_CAL))
  return;

 MCI_GPM_SET_CAL_TYPE(pld, MCI_GPM_WLAN_CAL_DONE);
 pld[MCI_GPM_WLAN_CAL_W_SEQUENCE] = mci_hw->wlan_cal_done++;
 ar9003_mci_send_message(ah, MCI_GPM, 0, pld, 16, 1, 0);
}

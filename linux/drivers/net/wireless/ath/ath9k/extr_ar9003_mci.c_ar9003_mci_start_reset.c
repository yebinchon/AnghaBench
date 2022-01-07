
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath9k_hw_mci {scalar_t__ bt_state; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int IS_CHAN_2GHZ (struct ath9k_channel*) ;
 int MCI ;
 scalar_t__ MCI_BT_AWAKE ;
 scalar_t__ MCI_BT_CAL ;
 scalar_t__ MCI_BT_CAL_START ;
 int MCI_GPM ;
 int MCI_GPM_BT_CAL_DONE ;
 int MCI_GPM_SET_CAL_TYPE (int *,int ) ;
 int MCI_GPM_WLAN_CAL_GRANT ;
 int ar9003_mci_2g5g_changed (struct ath_hw*,int ) ;
 int ar9003_mci_disable_interrupt (struct ath_hw*) ;
 int ar9003_mci_enable_interrupt (struct ath_hw*) ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int *,int,int,int) ;
 scalar_t__ ar9003_mci_wait_for_gpm (struct ath_hw*,int ,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

bool ar9003_mci_start_reset(struct ath_hw *ah, struct ath9k_channel *chan)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;
 u32 payload[4] = {0, 0, 0, 0};

 ar9003_mci_2g5g_changed(ah, IS_CHAN_2GHZ(chan));

 if (mci_hw->bt_state != MCI_BT_CAL_START)
  return 0;

 mci_hw->bt_state = MCI_BT_CAL;






 ar9003_mci_disable_interrupt(ah);

 MCI_GPM_SET_CAL_TYPE(payload, MCI_GPM_WLAN_CAL_GRANT);
 ar9003_mci_send_message(ah, MCI_GPM, 0, payload,
    16, 1, 0);



 if (ar9003_mci_wait_for_gpm(ah, MCI_GPM_BT_CAL_DONE,
        0, 25000))
  ath_dbg(common, MCI, "MCI BT_CAL_DONE received\n");
 else
  ath_dbg(common, MCI,
   "MCI BT_CAL_DONE not received\n");

 mci_hw->bt_state = MCI_BT_AWAKE;

 ar9003_mci_enable_interrupt(ah);

 return 1;
}

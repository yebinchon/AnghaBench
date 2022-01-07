
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath9k_hw_mci {scalar_t__ bt_state; int unhalt_bt_gpm; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 scalar_t__ MCI_BT_SLEEP ;
 int MCI_STATE_REMOTE_SLEEP ;
 int ar9003_mci_send_coex_halt_bt_gpm (struct ath_hw*,int,int) ;
 int ar9003_mci_send_coex_version_query (struct ath_hw*,int) ;
 int ar9003_mci_send_coex_wlan_channels (struct ath_hw*,int) ;
 scalar_t__ ar9003_mci_state (struct ath_hw*,int ) ;

__attribute__((used)) static void ar9003_mci_sync_bt_state(struct ath_hw *ah)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 cur_bt_state;

 cur_bt_state = ar9003_mci_state(ah, MCI_STATE_REMOTE_SLEEP);

 if (mci->bt_state != cur_bt_state)
  mci->bt_state = cur_bt_state;

 if (mci->bt_state != MCI_BT_SLEEP) {

  ar9003_mci_send_coex_version_query(ah, 1);
  ar9003_mci_send_coex_wlan_channels(ah, 1);

  if (mci->unhalt_bt_gpm == 1)
   ar9003_mci_send_coex_halt_bt_gpm(ah, 0, 1);
 }
}

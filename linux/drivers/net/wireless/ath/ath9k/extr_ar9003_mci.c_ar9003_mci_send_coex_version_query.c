
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath9k_hw_mci {scalar_t__ bt_state; scalar_t__ bt_version_known; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 scalar_t__ MCI_BT_SLEEP ;
 int MCI_GPM ;
 int MCI_GPM_COEX_AGENT ;
 int MCI_GPM_COEX_VERSION_QUERY ;
 int MCI_GPM_SET_TYPE_OPCODE (int *,int ,int ) ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int *,int,int,int) ;

__attribute__((used)) static void ar9003_mci_send_coex_version_query(struct ath_hw *ah,
            bool wait_done)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 payload[4] = {0, 0, 0, 0};

 if (mci->bt_version_known ||
     (mci->bt_state == MCI_BT_SLEEP))
  return;

 MCI_GPM_SET_TYPE_OPCODE(payload, MCI_GPM_COEX_AGENT,
    MCI_GPM_COEX_VERSION_QUERY);
 ar9003_mci_send_message(ah, MCI_GPM, 0, payload, 16, wait_done, 1);
}

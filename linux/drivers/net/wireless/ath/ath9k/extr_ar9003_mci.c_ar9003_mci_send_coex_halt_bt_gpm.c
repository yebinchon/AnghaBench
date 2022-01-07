
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath9k_hw_mci {int query_bt; int unhalt_bt_gpm; int need_flush_btinfo; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int MCI_GPM ;
 int MCI_GPM_COEX_AGENT ;
 int MCI_GPM_COEX_BT_GPM_HALT ;
 int MCI_GPM_COEX_BT_GPM_UNHALT ;
 int MCI_GPM_COEX_B_HALT_STATE ;
 int MCI_GPM_COEX_HALT_BT_GPM ;
 int MCI_GPM_SET_TYPE_OPCODE (int *,int ,int ) ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int *,int,int,int) ;

__attribute__((used)) static void ar9003_mci_send_coex_halt_bt_gpm(struct ath_hw *ah, bool halt,
          bool wait_done)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 payload[4] = {0, 0, 0, 0};

 MCI_GPM_SET_TYPE_OPCODE(payload, MCI_GPM_COEX_AGENT,
    MCI_GPM_COEX_HALT_BT_GPM);

 if (halt) {
  mci->query_bt = 1;

  mci->unhalt_bt_gpm = 1;
  mci->need_flush_btinfo = 1;
  *(((u8 *)payload) + MCI_GPM_COEX_B_HALT_STATE) =
   MCI_GPM_COEX_BT_GPM_HALT;
 } else
  *(((u8 *)payload) + MCI_GPM_COEX_B_HALT_STATE) =
   MCI_GPM_COEX_BT_GPM_UNHALT;

 ar9003_mci_send_message(ah, MCI_GPM, 0, payload, 16, wait_done, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath9k_hw_mci {scalar_t__ bt_state; int need_flush_btinfo; int query_bt; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 scalar_t__ MCI_BT_SLEEP ;
 int MCI_GPM ;
 int MCI_GPM_COEX_AGENT ;
 int MCI_GPM_COEX_B_BT_BITMAP ;
 int MCI_GPM_COEX_QUERY_BT_ALL_INFO ;
 int MCI_GPM_COEX_QUERY_BT_TOPOLOGY ;
 int MCI_GPM_COEX_STATUS_QUERY ;
 int MCI_GPM_SET_TYPE_OPCODE (int *,int ,int ) ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int *,int,int,int) ;

__attribute__((used)) static void ar9003_mci_send_coex_bt_status_query(struct ath_hw *ah,
      bool wait_done, u8 query_type)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 payload[4] = {0, 0, 0, 0};
 bool query_btinfo;

 if (mci->bt_state == MCI_BT_SLEEP)
  return;

 query_btinfo = !!(query_type & (MCI_GPM_COEX_QUERY_BT_ALL_INFO |
     MCI_GPM_COEX_QUERY_BT_TOPOLOGY));
 MCI_GPM_SET_TYPE_OPCODE(payload, MCI_GPM_COEX_AGENT,
    MCI_GPM_COEX_STATUS_QUERY);

 *(((u8 *)payload) + MCI_GPM_COEX_B_BT_BITMAP) = query_type;





 if (!ar9003_mci_send_message(ah, MCI_GPM, 0, payload, 16,
    wait_done, 1)) {
  if (query_btinfo)
   mci->need_flush_btinfo = 1;
 }

 if (query_btinfo)
  mci->query_bt = 0;
}

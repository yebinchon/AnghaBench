
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath9k_hw_mci {scalar_t__ bt_state; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {scalar_t__ power_mode; TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;


 scalar_t__ AR_BTCOEX_CTRL ;
 int AR_BTCOEX_CTRL_MCI_MODE_EN ;
 scalar_t__ AR_MCI_COMMAND0 ;
 int AR_MCI_COMMAND0_DISABLE_TIMESTAMP ;
 int AR_MCI_COMMAND0_HEADER ;
 int AR_MCI_COMMAND0_LEN ;
 scalar_t__ AR_MCI_INTERRUPT_EN ;
 int AR_MCI_INTERRUPT_MSG_FAIL_MASK ;
 scalar_t__ AR_MCI_INTERRUPT_RAW ;
 int AR_MCI_INTERRUPT_SW_MSG_DONE ;
 scalar_t__ AR_MCI_TX_PAYLOAD0 ;
 scalar_t__ ATH9K_PM_FULL_SLEEP ;
 int MCI ;
 scalar_t__ MCI_BT_SLEEP ;
 int MCI_FLAG_DISABLE_TIMESTAMP ;
 int REG_READ (struct ath_hw*,scalar_t__) ;
 int REG_WRITE (struct ath_hw*,scalar_t__,int) ;
 int SM (int,int ) ;
 int ar9003_mci_queue_unsent_gpm (struct ath_hw*,int,int*,int) ;
 int ar9003_mci_wait_for_interrupt (struct ath_hw*,scalar_t__,int,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int,...) ;

bool ar9003_mci_send_message(struct ath_hw *ah, u8 header, u32 flag,
        u32 *payload, u8 len, bool wait_done,
        bool check_bt)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 bool msg_sent = 0;
 u32 regval;
 u32 saved_mci_int_en;
 int i;

 saved_mci_int_en = REG_READ(ah, AR_MCI_INTERRUPT_EN);
 regval = REG_READ(ah, AR_BTCOEX_CTRL);

 if ((regval == 0xdeadbeef) || !(regval & AR_BTCOEX_CTRL_MCI_MODE_EN)) {
  ath_dbg(common, MCI,
   "MCI Not sending 0x%x. MCI is not enabled. full_sleep = %d\n",
   header, (ah->power_mode == ATH9K_PM_FULL_SLEEP) ? 1 : 0);
  ar9003_mci_queue_unsent_gpm(ah, header, payload, 1);
  return 0;
 } else if (check_bt && (mci->bt_state == MCI_BT_SLEEP)) {
  ath_dbg(common, MCI,
   "MCI Don't send message 0x%x. BT is in sleep state\n",
   header);
  ar9003_mci_queue_unsent_gpm(ah, header, payload, 1);
  return 0;
 }

 if (wait_done)
  REG_WRITE(ah, AR_MCI_INTERRUPT_EN, 0);



 REG_WRITE(ah, AR_MCI_INTERRUPT_RAW,
    (AR_MCI_INTERRUPT_SW_MSG_DONE |
     AR_MCI_INTERRUPT_MSG_FAIL_MASK));

 if (payload) {
  for (i = 0; (i * 4) < len; i++)
   REG_WRITE(ah, (AR_MCI_TX_PAYLOAD0 + i * 4),
      *(payload + i));
 }

 REG_WRITE(ah, AR_MCI_COMMAND0,
    (SM((flag & MCI_FLAG_DISABLE_TIMESTAMP),
        AR_MCI_COMMAND0_DISABLE_TIMESTAMP) |
     SM(len, AR_MCI_COMMAND0_LEN) |
     SM(header, AR_MCI_COMMAND0_HEADER)));

 if (wait_done &&
     !(ar9003_mci_wait_for_interrupt(ah, AR_MCI_INTERRUPT_RAW,
         AR_MCI_INTERRUPT_SW_MSG_DONE, 500)))
  ar9003_mci_queue_unsent_gpm(ah, header, payload, 1);
 else {
  ar9003_mci_queue_unsent_gpm(ah, header, payload, 0);
  msg_sent = 1;
 }

 if (wait_done)
  REG_WRITE(ah, AR_MCI_INTERRUPT_EN, saved_mci_int_en);

 return msg_sent;
}

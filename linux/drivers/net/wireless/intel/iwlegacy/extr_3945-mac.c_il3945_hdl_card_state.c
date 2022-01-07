
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ card_state_notif; } ;
struct il_rx_pkt {TYPE_2__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {unsigned long status; int wait_command_queue; TYPE_3__* hw; } ;
struct TYPE_6__ {int wiphy; } ;


 int CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED ;
 int CSR_UCODE_DRV_GP1_SET ;
 int HW_CARD_DISABLED ;
 int IL_WARN (char*,char*,char*) ;
 int SW_CARD_DISABLED ;
 int S_RFKILL ;
 int _il_wr (struct il_priv*,int ,int ) ;
 int clear_bit (int ,unsigned long*) ;
 int il_scan_cancel (struct il_priv*) ;
 int le32_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;
 int set_bit (int ,unsigned long*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 int wake_up (int *) ;
 int wiphy_rfkill_set_hw_state (int ,scalar_t__) ;

__attribute__((used)) static void
il3945_hdl_card_state(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 u32 flags = le32_to_cpu(pkt->u.card_state_notif.flags);
 unsigned long status = il->status;

 IL_WARN("Card state received: HW:%s SW:%s\n",
  (flags & HW_CARD_DISABLED) ? "Kill" : "On",
  (flags & SW_CARD_DISABLED) ? "Kill" : "On");

 _il_wr(il, CSR_UCODE_DRV_GP1_SET, CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);

 if (flags & HW_CARD_DISABLED)
  set_bit(S_RFKILL, &il->status);
 else
  clear_bit(S_RFKILL, &il->status);

 il_scan_cancel(il);

 if ((test_bit(S_RFKILL, &status) !=
      test_bit(S_RFKILL, &il->status)))
  wiphy_rfkill_set_hw_state(il->hw->wiphy,
       test_bit(S_RFKILL, &il->status));
 else
  wake_up(&il->wait_command_queue);
}

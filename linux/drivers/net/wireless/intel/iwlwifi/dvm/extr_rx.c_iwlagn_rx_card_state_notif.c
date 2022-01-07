
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {unsigned long status; TYPE_1__* hw; int trans; } ;
struct iwl_card_state_notif {int flags; } ;
struct TYPE_2__ {int wiphy; } ;


 int CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED ;
 int CSR_UCODE_DRV_GP1_CLR ;
 int CSR_UCODE_DRV_GP1_SET ;
 int CT_CARD_DISABLED ;
 int HBUS_TARG_MBX_C ;
 int HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED ;
 int HW_CARD_DISABLED ;
 int IWL_DEBUG_RF_KILL (struct iwl_priv*,char*,char*,char*,char*) ;
 int RXON_CARD_DISABLED ;
 int STATUS_RF_KILL_HW ;
 int SW_CARD_DISABLED ;
 int clear_bit (int ,unsigned long*) ;
 int iwl_scan_cancel (struct iwl_priv*) ;
 int iwl_tt_enter_ct_kill (struct iwl_priv*) ;
 int iwl_tt_exit_ct_kill (struct iwl_priv*) ;
 int iwl_write32 (int ,int ,int ) ;
 int iwl_write_direct32 (int ,int ,int ) ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int set_bit (int ,unsigned long*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 int wiphy_rfkill_set_hw_state (int ,scalar_t__) ;

__attribute__((used)) static void iwlagn_rx_card_state_notif(struct iwl_priv *priv,
           struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_card_state_notif *card_state_notif = (void *)pkt->data;
 u32 flags = le32_to_cpu(card_state_notif->flags);
 unsigned long status = priv->status;

 IWL_DEBUG_RF_KILL(priv, "Card state received: HW:%s SW:%s CT:%s\n",
     (flags & HW_CARD_DISABLED) ? "Kill" : "On",
     (flags & SW_CARD_DISABLED) ? "Kill" : "On",
     (flags & CT_CARD_DISABLED) ?
     "Reached" : "Not reached");

 if (flags & (SW_CARD_DISABLED | HW_CARD_DISABLED |
       CT_CARD_DISABLED)) {

  iwl_write32(priv->trans, CSR_UCODE_DRV_GP1_SET,
       CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);

  iwl_write_direct32(priv->trans, HBUS_TARG_MBX_C,
     HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED);

  if (!(flags & RXON_CARD_DISABLED)) {
   iwl_write32(priv->trans, CSR_UCODE_DRV_GP1_CLR,
        CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);
   iwl_write_direct32(priv->trans, HBUS_TARG_MBX_C,
     HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED);
  }
  if (flags & CT_CARD_DISABLED)
   iwl_tt_enter_ct_kill(priv);
 }
 if (!(flags & CT_CARD_DISABLED))
  iwl_tt_exit_ct_kill(priv);

 if (flags & HW_CARD_DISABLED)
  set_bit(STATUS_RF_KILL_HW, &priv->status);
 else
  clear_bit(STATUS_RF_KILL_HW, &priv->status);


 if (!(flags & RXON_CARD_DISABLED))
  iwl_scan_cancel(priv);

 if ((test_bit(STATUS_RF_KILL_HW, &status) !=
      test_bit(STATUS_RF_KILL_HW, &priv->status)))
  wiphy_rfkill_set_hw_state(priv->hw->wiphy,
   test_bit(STATUS_RF_KILL_HW, &priv->status));
}

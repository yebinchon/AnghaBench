
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ipw_priv {int isr_inta; int status; int lock; int adapter_restart; int wait_command_queue; TYPE_3__* ieee; struct ipw_fw_error* error; int rf_kill; int link_down; int scan_event; int request_passive_scan; int request_direct_scan; int request_scan; int * txq; int txq_cmd; int irq_lock; } ;
struct ipw_fw_error {int dummy; } ;
struct TYPE_5__ {scalar_t__ encrypt; } ;
struct TYPE_4__ {int wiphy; } ;
struct TYPE_6__ {TYPE_2__ sec; TYPE_1__ wdev; } ;


 int HZ ;
 int IPW_DEBUG_FW (char*) ;
 int IPW_DEBUG_HC (char*) ;
 int IPW_DEBUG_RF_KILL (char*) ;
 int IPW_DEBUG_TX (char*) ;
 int IPW_DL_FW_ERRORS ;
 int IPW_ERROR (char*,...) ;
 int IPW_INTA_BIT_BEACON_PERIOD_EXPIRED ;
 int IPW_INTA_BIT_FATAL_ERROR ;
 int IPW_INTA_BIT_FW_CARD_DISABLE_PHY_OFF_DONE ;
 int IPW_INTA_BIT_FW_INITIALIZATION_DONE ;
 int IPW_INTA_BIT_PARITY_ERROR ;
 int IPW_INTA_BIT_RF_KILL_DONE ;
 int IPW_INTA_BIT_RX_TRANSFER ;
 int IPW_INTA_BIT_SLAVE_MODE_HOST_CMD_DONE ;
 int IPW_INTA_BIT_STATUS_CHANGE ;
 int IPW_INTA_BIT_TX_CMD_QUEUE ;
 int IPW_INTA_BIT_TX_QUEUE_1 ;
 int IPW_INTA_BIT_TX_QUEUE_2 ;
 int IPW_INTA_BIT_TX_QUEUE_3 ;
 int IPW_INTA_BIT_TX_QUEUE_4 ;
 int IPW_INTA_MASK_ALL ;
 int IPW_INTA_MASK_R ;
 int IPW_INTA_RW ;
 int IPW_WARNING (char*) ;
 int STATUS_ASSOCIATED ;
 int STATUS_ASSOCIATING ;
 int STATUS_HCMD_ACTIVE ;
 int STATUS_INIT ;
 int STATUS_RF_KILL_HW ;
 int cancel_delayed_work (int *) ;
 void* ipw_alloc_error_log (struct ipw_priv*) ;
 int ipw_debug_level ;
 int ipw_dump_error_log (struct ipw_priv*,struct ipw_fw_error*) ;
 int ipw_enable_interrupts (struct ipw_priv*) ;
 int ipw_queue_tx_reclaim (struct ipw_priv*,int *,int) ;
 int ipw_read32 (struct ipw_priv*,int ) ;
 int ipw_rx (struct ipw_priv*) ;
 int kfree (struct ipw_fw_error*) ;
 int notify_wx_assoc_event (struct ipw_priv*) ;
 int schedule_delayed_work (int *,int) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void ipw_irq_tasklet(struct ipw_priv *priv)
{
 u32 inta, inta_mask, handled = 0;
 unsigned long flags;
 int rc = 0;

 spin_lock_irqsave(&priv->irq_lock, flags);

 inta = ipw_read32(priv, IPW_INTA_RW);
 inta_mask = ipw_read32(priv, IPW_INTA_MASK_R);

 if (inta == 0xFFFFFFFF) {

  IPW_WARNING("TASKLET INTA == 0xFFFFFFFF\n");

  inta = 0;
 }
 inta &= (IPW_INTA_MASK_ALL & inta_mask);


 inta |= priv->isr_inta;

 spin_unlock_irqrestore(&priv->irq_lock, flags);

 spin_lock_irqsave(&priv->lock, flags);


 if (inta & IPW_INTA_BIT_RX_TRANSFER) {
  ipw_rx(priv);
  handled |= IPW_INTA_BIT_RX_TRANSFER;
 }

 if (inta & IPW_INTA_BIT_TX_CMD_QUEUE) {
  IPW_DEBUG_HC("Command completed.\n");
  rc = ipw_queue_tx_reclaim(priv, &priv->txq_cmd, -1);
  priv->status &= ~STATUS_HCMD_ACTIVE;
  wake_up_interruptible(&priv->wait_command_queue);
  handled |= IPW_INTA_BIT_TX_CMD_QUEUE;
 }

 if (inta & IPW_INTA_BIT_TX_QUEUE_1) {
  IPW_DEBUG_TX("TX_QUEUE_1\n");
  rc = ipw_queue_tx_reclaim(priv, &priv->txq[0], 0);
  handled |= IPW_INTA_BIT_TX_QUEUE_1;
 }

 if (inta & IPW_INTA_BIT_TX_QUEUE_2) {
  IPW_DEBUG_TX("TX_QUEUE_2\n");
  rc = ipw_queue_tx_reclaim(priv, &priv->txq[1], 1);
  handled |= IPW_INTA_BIT_TX_QUEUE_2;
 }

 if (inta & IPW_INTA_BIT_TX_QUEUE_3) {
  IPW_DEBUG_TX("TX_QUEUE_3\n");
  rc = ipw_queue_tx_reclaim(priv, &priv->txq[2], 2);
  handled |= IPW_INTA_BIT_TX_QUEUE_3;
 }

 if (inta & IPW_INTA_BIT_TX_QUEUE_4) {
  IPW_DEBUG_TX("TX_QUEUE_4\n");
  rc = ipw_queue_tx_reclaim(priv, &priv->txq[3], 3);
  handled |= IPW_INTA_BIT_TX_QUEUE_4;
 }

 if (inta & IPW_INTA_BIT_STATUS_CHANGE) {
  IPW_WARNING("STATUS_CHANGE\n");
  handled |= IPW_INTA_BIT_STATUS_CHANGE;
 }

 if (inta & IPW_INTA_BIT_BEACON_PERIOD_EXPIRED) {
  IPW_WARNING("TX_PERIOD_EXPIRED\n");
  handled |= IPW_INTA_BIT_BEACON_PERIOD_EXPIRED;
 }

 if (inta & IPW_INTA_BIT_SLAVE_MODE_HOST_CMD_DONE) {
  IPW_WARNING("HOST_CMD_DONE\n");
  handled |= IPW_INTA_BIT_SLAVE_MODE_HOST_CMD_DONE;
 }

 if (inta & IPW_INTA_BIT_FW_INITIALIZATION_DONE) {
  IPW_WARNING("FW_INITIALIZATION_DONE\n");
  handled |= IPW_INTA_BIT_FW_INITIALIZATION_DONE;
 }

 if (inta & IPW_INTA_BIT_FW_CARD_DISABLE_PHY_OFF_DONE) {
  IPW_WARNING("PHY_OFF_DONE\n");
  handled |= IPW_INTA_BIT_FW_CARD_DISABLE_PHY_OFF_DONE;
 }

 if (inta & IPW_INTA_BIT_RF_KILL_DONE) {
  IPW_DEBUG_RF_KILL("RF_KILL_DONE\n");
  priv->status |= STATUS_RF_KILL_HW;
  wiphy_rfkill_set_hw_state(priv->ieee->wdev.wiphy, 1);
  wake_up_interruptible(&priv->wait_command_queue);
  priv->status &= ~(STATUS_ASSOCIATED | STATUS_ASSOCIATING);
  cancel_delayed_work(&priv->request_scan);
  cancel_delayed_work(&priv->request_direct_scan);
  cancel_delayed_work(&priv->request_passive_scan);
  cancel_delayed_work(&priv->scan_event);
  schedule_work(&priv->link_down);
  schedule_delayed_work(&priv->rf_kill, 2 * HZ);
  handled |= IPW_INTA_BIT_RF_KILL_DONE;
 }

 if (inta & IPW_INTA_BIT_FATAL_ERROR) {
  IPW_WARNING("Firmware error detected.  Restarting.\n");
  if (priv->error) {
   IPW_DEBUG_FW("Sysfs 'error' log already exists.\n");
   if (ipw_debug_level & IPW_DL_FW_ERRORS) {
    struct ipw_fw_error *error =
        ipw_alloc_error_log(priv);
    ipw_dump_error_log(priv, error);
    kfree(error);
   }
  } else {
   priv->error = ipw_alloc_error_log(priv);
   if (priv->error)
    IPW_DEBUG_FW("Sysfs 'error' log captured.\n");
   else
    IPW_DEBUG_FW("Error allocating sysfs 'error' "
          "log.\n");
   if (ipw_debug_level & IPW_DL_FW_ERRORS)
    ipw_dump_error_log(priv, priv->error);
  }



  if (priv->ieee->sec.encrypt) {
   priv->status &= ~STATUS_ASSOCIATED;
   notify_wx_assoc_event(priv);
  }



  priv->status &= ~STATUS_INIT;


  priv->status &= ~STATUS_HCMD_ACTIVE;
  wake_up_interruptible(&priv->wait_command_queue);

  schedule_work(&priv->adapter_restart);
  handled |= IPW_INTA_BIT_FATAL_ERROR;
 }

 if (inta & IPW_INTA_BIT_PARITY_ERROR) {
  IPW_ERROR("Parity error\n");
  handled |= IPW_INTA_BIT_PARITY_ERROR;
 }

 if (handled != inta) {
  IPW_ERROR("Unhandled INTA bits 0x%08x\n", inta & ~handled);
 }

 spin_unlock_irqrestore(&priv->lock, flags);


 ipw_enable_interrupts(priv);
}

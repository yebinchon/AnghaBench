
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int expires; } ;
struct fza_private {int int_mask; int cmd_done_flag; int state; int queue_active; int state_chg_flag; int lock; int state_chg_wait; int name; TYPE_2__ reset_timer; int timer_state; int ring_smt_rx_index; int ring_smt_tx_index; int ring_hst_rx_index; int ring_rmc_txd_index; int ring_rmc_tx_index; int ring_uns_index; int ring_cmd_index; TYPE_1__* regs; int irq_count_state_chg; int irq_count_uns_poll; int irq_count_link_st_chg; int irq_count_flush_tx; int irq_count_smt_tx_poll; int irq_count_rx_poll; int irq_count_tx_done; int cmd_done_wait; int irq_count_cmd_done; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int status; int int_event; } ;


 int FZA_EVENT_CMD_DONE ;
 int FZA_EVENT_FLUSH_TX ;
 int FZA_EVENT_LINK_ST_CHG ;
 int FZA_EVENT_RX_POLL ;
 int FZA_EVENT_SMT_TX_POLL ;
 int FZA_EVENT_STATE_CHG ;
 int FZA_EVENT_TX_DONE ;
 int FZA_EVENT_UNS_POLL ;
 scalar_t__ FZA_LINK_ON ;
 int FZA_RING_CMD_INIT ;
 int FZA_RING_CMD_PARAM ;






 int FZA_STATUS_GET_HALT (int) ;
 scalar_t__ FZA_STATUS_GET_LINK (int) ;
 int FZA_STATUS_GET_STATE (int) ;
 int HZ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int add_timer (TYPE_2__*) ;
 int del_timer_sync (TYPE_2__*) ;
 int fza_cmd_send (struct net_device*,int ) ;
 int fza_do_reset (struct fza_private*) ;
 int fza_regs_dump (struct fza_private*) ;
 int fza_rx (struct net_device*) ;
 int fza_rx_init (struct fza_private*) ;
 int fza_set_rx_mode (struct net_device*) ;
 int fza_tx (struct net_device*) ;
 int fza_tx_flush (struct net_device*) ;
 int fza_tx_smt (struct net_device*) ;
 int fza_uns (struct net_device*) ;
 int jiffies ;
 struct fza_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_debug (char*,int ,...) ;
 int pr_info (char*,int ) ;
 int pr_warn (char*,int ,int) ;
 int readw_o (int *) ;
 int readw_u (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;
 int writew_u (int,int *) ;

__attribute__((used)) static irqreturn_t fza_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct fza_private *fp = netdev_priv(dev);
 uint int_event;


 int_event = readw_o(&fp->regs->int_event) & fp->int_mask;
 if (int_event == 0)
  return IRQ_NONE;


 writew_u(int_event, &fp->regs->int_event);




 if ((int_event & FZA_EVENT_CMD_DONE) != 0) {
  fp->irq_count_cmd_done++;

  spin_lock(&fp->lock);
  fp->cmd_done_flag = 1;
  wake_up(&fp->cmd_done_wait);
  spin_unlock(&fp->lock);
 }


 if ((int_event & FZA_EVENT_TX_DONE) != 0) {
  fp->irq_count_tx_done++;
  fza_tx(dev);
 }


 if ((int_event & FZA_EVENT_RX_POLL) != 0) {
  fp->irq_count_rx_poll++;
  fza_rx(dev);
 }


 if ((int_event & FZA_EVENT_SMT_TX_POLL) != 0) {
  fp->irq_count_smt_tx_poll++;
  fza_tx_smt(dev);
 }


 if ((int_event & FZA_EVENT_FLUSH_TX) != 0) {
  fp->irq_count_flush_tx++;
  fza_tx_flush(dev);
 }


 if ((int_event & FZA_EVENT_LINK_ST_CHG) != 0) {
  uint status;

  fp->irq_count_link_st_chg++;
  status = readw_u(&fp->regs->status);
  if (FZA_STATUS_GET_LINK(status) == FZA_LINK_ON) {
   netif_carrier_on(dev);
   pr_info("%s: link available\n", fp->name);
  } else {
   netif_carrier_off(dev);
   pr_info("%s: link unavailable\n", fp->name);
  }
 }


 if ((int_event & FZA_EVENT_UNS_POLL) != 0) {
  fp->irq_count_uns_poll++;
  fza_uns(dev);
 }


 if ((int_event & FZA_EVENT_STATE_CHG) != 0) {
  uint status, state;

  fp->irq_count_state_chg++;

  status = readw_u(&fp->regs->status);
  state = FZA_STATUS_GET_STATE(status);
  pr_debug("%s: state change: %x\n", fp->name, state);
  switch (state) {
  case 130:
   break;

  case 128:
   netif_carrier_off(dev);
   del_timer_sync(&fp->reset_timer);
   fp->ring_cmd_index = 0;
   fp->ring_uns_index = 0;
   fp->ring_rmc_tx_index = 0;
   fp->ring_rmc_txd_index = 0;
   fp->ring_hst_rx_index = 0;
   fp->ring_smt_tx_index = 0;
   fp->ring_smt_rx_index = 0;
   if (fp->state > state) {
    pr_info("%s: OK\n", fp->name);
    fza_cmd_send(dev, FZA_RING_CMD_INIT);
   }
   break;

  case 132:
   if (fp->state > state) {
    fza_set_rx_mode(dev);
    fza_cmd_send(dev, FZA_RING_CMD_PARAM);
   }
   break;

  case 129:
  case 131:
   fp->state = state;
   fza_rx_init(fp);
   fp->queue_active = 1;
   netif_wake_queue(dev);
   pr_debug("%s: queue woken\n", fp->name);
   break;

  case 133:
   fp->queue_active = 0;
   netif_stop_queue(dev);
   pr_debug("%s: queue stopped\n", fp->name);
   del_timer_sync(&fp->reset_timer);
   pr_warn("%s: halted, reason: %x\n", fp->name,
    FZA_STATUS_GET_HALT(status));
   fza_regs_dump(fp);
   pr_info("%s: resetting the board...\n", fp->name);
   fza_do_reset(fp);
   fp->timer_state = 0;
   fp->reset_timer.expires = jiffies + 45 * HZ;
   add_timer(&fp->reset_timer);
   break;

  default:
   pr_warn("%s: undefined state: %x\n", fp->name, state);
   break;
  }

  spin_lock(&fp->lock);
  fp->state_chg_flag = 1;
  wake_up(&fp->state_chg_wait);
  spin_unlock(&fp->lock);
 }

 return IRQ_HANDLED;
}

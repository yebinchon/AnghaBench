
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ state; } ;
struct ti_hecc_priv {scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ use_hecc1int; int offload; int mbx_lock; TYPE_1__ can; int ndev; } ;
struct net_device_stats {int tx_packets; int tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
typedef int irqreturn_t ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int BIT (int) ;
 int CAN_LED_EVENT_TX ;
 int CAN_STATE_BUS_OFF ;
 scalar_t__ CAN_STATE_ERROR_ACTIVE ;
 int CAN_STATE_ERROR_PASSIVE ;
 int CAN_STATE_ERROR_WARNING ;
 int HECC_CANES ;
 int HECC_CANES_FLAGS ;
 int HECC_CANGIF0 ;
 int HECC_CANGIF1 ;
 int HECC_CANGIF_BOIF ;
 int HECC_CANGIF_EPIF ;
 int HECC_CANGIF_GMIF ;
 int HECC_CANGIF_WLIF ;
 int HECC_CANGIM ;
 int HECC_CANGIM_DEF_MASK ;
 int HECC_CANME ;
 int HECC_CANREC ;
 int HECC_CANRMP ;
 int HECC_CANTA ;
 int HECC_CANTEC ;
 int HECC_TX_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int can_bus_off (struct net_device*) ;
 int can_led_event (struct net_device*,int ) ;
 scalar_t__ can_rx_offload_get_echo_skb (int *,int,int) ;
 int can_rx_offload_irq_offload_timestamp (int *,unsigned long) ;
 int get_tx_tail_mb (struct ti_hecc_priv*) ;
 int hecc_clear_bit (struct ti_hecc_priv*,int ,int) ;
 int hecc_read (struct ti_hecc_priv*,int ) ;
 int hecc_read_stamp (struct ti_hecc_priv*,int) ;
 int hecc_write (struct ti_hecc_priv*,int ,int) ;
 int netdev_dbg (int ,char*) ;
 struct ti_hecc_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ti_hecc_change_state (struct net_device*,int,int) ;
 int ti_hecc_error (struct net_device*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t ti_hecc_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = (struct net_device *)dev_id;
 struct ti_hecc_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &ndev->stats;
 u32 mbxno, mbx_mask, int_status, err_status, stamp;
 unsigned long flags, rx_pending;
 u32 handled = 0;

 int_status = hecc_read(priv,
          priv->use_hecc1int ?
          HECC_CANGIF1 : HECC_CANGIF0);

 if (!int_status)
  return IRQ_NONE;

 err_status = hecc_read(priv, HECC_CANES);
 if (unlikely(err_status & HECC_CANES_FLAGS))
  ti_hecc_error(ndev, int_status, err_status);

 if (unlikely(int_status & HECC_CANGIM_DEF_MASK)) {
  enum can_state rx_state, tx_state;
  u32 rec = hecc_read(priv, HECC_CANREC);
  u32 tec = hecc_read(priv, HECC_CANTEC);

  if (int_status & HECC_CANGIF_WLIF) {
   handled |= HECC_CANGIF_WLIF;
   rx_state = rec >= tec ? CAN_STATE_ERROR_WARNING : 0;
   tx_state = rec <= tec ? CAN_STATE_ERROR_WARNING : 0;
   netdev_dbg(priv->ndev, "Error Warning interrupt\n");
   ti_hecc_change_state(ndev, rx_state, tx_state);
  }

  if (int_status & HECC_CANGIF_EPIF) {
   handled |= HECC_CANGIF_EPIF;
   rx_state = rec >= tec ? CAN_STATE_ERROR_PASSIVE : 0;
   tx_state = rec <= tec ? CAN_STATE_ERROR_PASSIVE : 0;
   netdev_dbg(priv->ndev, "Error passive interrupt\n");
   ti_hecc_change_state(ndev, rx_state, tx_state);
  }

  if (int_status & HECC_CANGIF_BOIF) {
   handled |= HECC_CANGIF_BOIF;
   rx_state = CAN_STATE_BUS_OFF;
   tx_state = CAN_STATE_BUS_OFF;
   netdev_dbg(priv->ndev, "Bus off interrupt\n");


   hecc_write(priv, HECC_CANGIM, 0);
   can_bus_off(ndev);
   ti_hecc_change_state(ndev, rx_state, tx_state);
  }
 } else if (unlikely(priv->can.state != CAN_STATE_ERROR_ACTIVE)) {
  enum can_state new_state, tx_state, rx_state;
  u32 rec = hecc_read(priv, HECC_CANREC);
  u32 tec = hecc_read(priv, HECC_CANTEC);

  if (rec >= 128 || tec >= 128)
   new_state = CAN_STATE_ERROR_PASSIVE;
  else if (rec >= 96 || tec >= 96)
   new_state = CAN_STATE_ERROR_WARNING;
  else
   new_state = CAN_STATE_ERROR_ACTIVE;

  if (new_state < priv->can.state) {
   rx_state = rec >= tec ? new_state : 0;
   tx_state = rec <= tec ? new_state : 0;
   ti_hecc_change_state(ndev, rx_state, tx_state);
  }
 }

 if (int_status & HECC_CANGIF_GMIF) {
  while (priv->tx_tail - priv->tx_head > 0) {
   mbxno = get_tx_tail_mb(priv);
   mbx_mask = BIT(mbxno);
   if (!(mbx_mask & hecc_read(priv, HECC_CANTA)))
    break;
   hecc_write(priv, HECC_CANTA, mbx_mask);
   spin_lock_irqsave(&priv->mbx_lock, flags);
   hecc_clear_bit(priv, HECC_CANME, mbx_mask);
   spin_unlock_irqrestore(&priv->mbx_lock, flags);
   stamp = hecc_read_stamp(priv, mbxno);
   stats->tx_bytes +=
    can_rx_offload_get_echo_skb(&priv->offload,
           mbxno, stamp);
   stats->tx_packets++;
   can_led_event(ndev, CAN_LED_EVENT_TX);
   --priv->tx_tail;
  }


  if ((priv->tx_head == priv->tx_tail &&
       ((priv->tx_head & HECC_TX_MASK) != HECC_TX_MASK)) ||
      (((priv->tx_tail & HECC_TX_MASK) == HECC_TX_MASK) &&
       ((priv->tx_head & HECC_TX_MASK) == HECC_TX_MASK)))
   netif_wake_queue(ndev);


  while ((rx_pending = hecc_read(priv, HECC_CANRMP))) {
   can_rx_offload_irq_offload_timestamp(&priv->offload,
            rx_pending);
  }
 }


 if (priv->use_hecc1int) {
  hecc_write(priv, HECC_CANGIF1, handled);
  int_status = hecc_read(priv, HECC_CANGIF1);
 } else {
  hecc_write(priv, HECC_CANGIF0, handled);
  int_status = hecc_read(priv, HECC_CANGIF0);
 }

 return IRQ_HANDLED;
}

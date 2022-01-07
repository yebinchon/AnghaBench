
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device_stats {int tx_packets; int tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
struct m_can_classdev {int irqstatus; int version; int napi; int is_peripheral; TYPE_1__* ops; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* clear_interrupts ) (struct m_can_classdev*) ;} ;


 int CAN_LED_EVENT_TX ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IR_ALL_INT ;
 int IR_ERR_ALL_30X ;
 int IR_RF0N ;
 int IR_TC ;
 int IR_TEFN ;
 int M_CAN_IR ;
 scalar_t__ can_get_echo_skb (struct net_device*,int ) ;
 int can_led_event (struct net_device*,int ) ;
 int m_can_disable_all_interrupts (struct m_can_classdev*) ;
 int m_can_echo_tx_event (struct net_device*) ;
 int m_can_read (struct m_can_classdev*,int ) ;
 int m_can_rx_peripheral (struct net_device*) ;
 int m_can_tx_fifo_full (struct m_can_classdev*) ;
 int m_can_write (struct m_can_classdev*,int ,int) ;
 int napi_schedule (int *) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int stub1 (struct m_can_classdev*) ;

__attribute__((used)) static irqreturn_t m_can_isr(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct m_can_classdev *cdev = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 u32 ir;

 ir = m_can_read(cdev, M_CAN_IR);
 if (!ir)
  return IRQ_NONE;


 if (ir & IR_ALL_INT)
  m_can_write(cdev, M_CAN_IR, ir);

 if (cdev->ops->clear_interrupts)
  cdev->ops->clear_interrupts(cdev);






 if ((ir & IR_RF0N) || (ir & IR_ERR_ALL_30X)) {
  cdev->irqstatus = ir;
  m_can_disable_all_interrupts(cdev);
  if (!cdev->is_peripheral)
   napi_schedule(&cdev->napi);
  else
   m_can_rx_peripheral(dev);
 }

 if (cdev->version == 30) {
  if (ir & IR_TC) {

   stats->tx_bytes += can_get_echo_skb(dev, 0);
   stats->tx_packets++;
   can_led_event(dev, CAN_LED_EVENT_TX);
   netif_wake_queue(dev);
  }
 } else {
  if (ir & IR_TEFN) {

   m_can_echo_tx_event(dev);
   can_led_event(dev, CAN_LED_EVENT_TX);
   if (netif_queue_stopped(dev) &&
       !m_can_tx_fifo_full(cdev))
    netif_wake_queue(dev);
  }
 }

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct m_can_classdev {struct sk_buff* tx_skb; int tx_work; int tx_wq; int net; TYPE_1__ can; scalar_t__ is_peripheral; } ;
typedef int netdev_tx_t ;


 scalar_t__ CAN_STATE_BUS_OFF ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int m_can_clean (struct net_device*) ;
 int m_can_tx_handler (struct m_can_classdev*) ;
 int netdev_err (struct net_device*,char*) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;
 int netif_stop_queue (int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static netdev_tx_t m_can_start_xmit(struct sk_buff *skb,
        struct net_device *dev)
{
 struct m_can_classdev *cdev = netdev_priv(dev);

 if (can_dropped_invalid_skb(dev, skb))
  return NETDEV_TX_OK;

 if (cdev->is_peripheral) {
  if (cdev->tx_skb) {
   netdev_err(dev, "hard_xmit called while tx busy\n");
   return NETDEV_TX_BUSY;
  }

  if (cdev->can.state == CAN_STATE_BUS_OFF) {
   m_can_clean(dev);
  } else {





   cdev->tx_skb = skb;
   netif_stop_queue(cdev->net);
   queue_work(cdev->tx_wq, &cdev->tx_work);
  }
 } else {
  cdev->tx_skb = skb;
  return m_can_tx_handler(cdev);
 }

 return NETDEV_TX_OK;
}

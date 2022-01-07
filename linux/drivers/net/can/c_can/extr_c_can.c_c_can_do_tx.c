
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device_stats {int tx_packets; int tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
struct c_can_priv {int (* read_reg ) (struct c_can_priv*,int ) ;int* dlc; int tx_active; } ;


 int CAN_LED_EVENT_TX ;
 int C_CAN_INTPND2_REG ;
 int C_CAN_MSG_OBJ_TX_FIRST ;
 int C_CAN_MSG_OBJ_TX_NUM ;
 int IF_RX ;
 int atomic_sub (int,int *) ;
 int c_can_inval_tx_object (struct net_device*,int ,int) ;
 int can_get_echo_skb (struct net_device*,int) ;
 int can_led_event (struct net_device*,int ) ;
 int ffs (int) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int stub1 (struct c_can_priv*,int ) ;

__attribute__((used)) static void c_can_do_tx(struct net_device *dev)
{
 struct c_can_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 u32 idx, obj, pkts = 0, bytes = 0, pend, clr;

 clr = pend = priv->read_reg(priv, C_CAN_INTPND2_REG);

 while ((idx = ffs(pend))) {
  idx--;
  pend &= ~(1 << idx);
  obj = idx + C_CAN_MSG_OBJ_TX_FIRST;
  c_can_inval_tx_object(dev, IF_RX, obj);
  can_get_echo_skb(dev, idx);
  bytes += priv->dlc[idx];
  pkts++;
 }


 atomic_sub(clr, &priv->tx_active);

 if (clr & (1 << (C_CAN_MSG_OBJ_TX_NUM - 1)))
  netif_wake_queue(dev);

 if (pkts) {
  stats->tx_bytes += bytes;
  stats->tx_packets += pkts;
  can_led_event(dev, CAN_LED_EVENT_TX);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_dlc; } ;
struct c_can_priv {int tx_active; int * dlc; } ;
typedef int netdev_tx_t ;


 int C_CAN_MSG_OBJ_TX_FIRST ;
 int C_CAN_MSG_OBJ_TX_NUM ;
 int IF_COMM_TX ;
 int IF_TX ;
 int NETDEV_TX_OK ;
 int atomic_add (int,int *) ;
 int atomic_read (int *) ;
 int c_can_object_put (struct net_device*,int ,int,int ) ;
 int c_can_setup_tx_object (struct net_device*,int ,struct can_frame*,int) ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,int) ;
 int fls (int ) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static netdev_tx_t c_can_start_xmit(struct sk_buff *skb,
        struct net_device *dev)
{
 struct can_frame *frame = (struct can_frame *)skb->data;
 struct c_can_priv *priv = netdev_priv(dev);
 u32 idx, obj;

 if (can_dropped_invalid_skb(dev, skb))
  return NETDEV_TX_OK;




 idx = fls(atomic_read(&priv->tx_active));
 obj = idx + C_CAN_MSG_OBJ_TX_FIRST;


 if (idx == C_CAN_MSG_OBJ_TX_NUM - 1)
  netif_stop_queue(dev);





 c_can_setup_tx_object(dev, IF_TX, frame, idx);
 priv->dlc[idx] = frame->can_dlc;
 can_put_echo_skb(skb, dev, idx);


 atomic_add((1 << idx), &priv->tx_active);

 c_can_object_put(dev, IF_TX, obj, IF_COMM_TX);

 return NETDEV_TX_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct cc770_priv {struct sk_buff* tx_skb; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int ctrl1; } ;


 int CC770_OBJ_TX ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int TXRQST_SET ;
 int TXRQST_UNC ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int cc770_read_reg (struct cc770_priv*,int ) ;
 int cc770_tx (struct net_device*,unsigned int) ;
 TYPE_1__* msgobj ;
 int netdev_err (struct net_device*,char*) ;
 struct cc770_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 unsigned int obj2msgobj (int ) ;

__attribute__((used)) static netdev_tx_t cc770_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct cc770_priv *priv = netdev_priv(dev);
 unsigned int mo = obj2msgobj(CC770_OBJ_TX);

 if (can_dropped_invalid_skb(dev, skb))
  return NETDEV_TX_OK;

 netif_stop_queue(dev);

 if ((cc770_read_reg(priv,
       msgobj[mo].ctrl1) & TXRQST_UNC) == TXRQST_SET) {
  netdev_err(dev, "TX register is still occupied!\n");
  return NETDEV_TX_BUSY;
 }

 priv->tx_skb = skb;
 cc770_tx(dev, mo);

 return NETDEV_TX_OK;
}

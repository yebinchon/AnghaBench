
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bmac_data {int queue; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int bmac_start (struct net_device*) ;
 struct bmac_data* netdev_priv (struct net_device*) ;
 int skb_queue_tail (int ,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t
bmac_output(struct sk_buff *skb, struct net_device *dev)
{
 struct bmac_data *bp = netdev_priv(dev);
 skb_queue_tail(bp->queue, skb);
 bmac_start(dev);
 return NETDEV_TX_OK;
}

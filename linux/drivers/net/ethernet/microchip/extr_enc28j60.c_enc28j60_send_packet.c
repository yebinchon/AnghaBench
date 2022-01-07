
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct enc28j60_net {int tx_work; struct sk_buff* tx_skb; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static netdev_tx_t enc28j60_send_packet(struct sk_buff *skb,
     struct net_device *dev)
{
 struct enc28j60_net *priv = netdev_priv(dev);
 netif_stop_queue(dev);


 priv->tx_skb = skb;
 schedule_work(&priv->tx_work);

 return NETDEV_TX_OK;
}

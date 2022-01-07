
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct encx24j600_priv {int tx_work; int kworker; struct sk_buff* tx_skb; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int kthread_queue_work (int *,int *) ;
 struct encx24j600_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;

__attribute__((used)) static netdev_tx_t encx24j600_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct encx24j600_priv *priv = netdev_priv(dev);

 netif_stop_queue(dev);


 netif_trans_update(dev);


 priv->tx_skb = skb;

 kthread_queue_work(&priv->kworker, &priv->tx_work);

 return NETDEV_TX_OK;
}

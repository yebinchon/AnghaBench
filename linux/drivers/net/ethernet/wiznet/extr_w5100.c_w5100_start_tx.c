
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w5100_priv {int tx_work; int xfer_wq; struct sk_buff* tx_skb; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {scalar_t__ may_sleep; } ;


 int NETDEV_TX_OK ;
 int WARN_ON (struct sk_buff*) ;
 struct w5100_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int queue_work (int ,int *) ;
 int w5100_tx_skb (struct net_device*,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t w5100_start_tx(struct sk_buff *skb, struct net_device *ndev)
{
 struct w5100_priv *priv = netdev_priv(ndev);

 netif_stop_queue(ndev);

 if (priv->ops->may_sleep) {
  WARN_ON(priv->tx_skb);
  priv->tx_skb = skb;
  queue_work(priv->xfer_wq, &priv->tx_work);
 } else {
  w5100_tx_skb(ndev, skb);
 }

 return NETDEV_TX_OK;
}

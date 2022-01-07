
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct hi3110_priv {int tx_work; int wq; struct sk_buff* tx_skb; scalar_t__ tx_len; struct spi_device* spi; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int dev_err (int *,char*) ;
 struct hi3110_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static netdev_tx_t hi3110_hard_start_xmit(struct sk_buff *skb,
       struct net_device *net)
{
 struct hi3110_priv *priv = netdev_priv(net);
 struct spi_device *spi = priv->spi;

 if (priv->tx_skb || priv->tx_len) {
  dev_err(&spi->dev, "hard_xmit called while tx busy\n");
  return NETDEV_TX_BUSY;
 }

 if (can_dropped_invalid_skb(net, skb))
  return NETDEV_TX_OK;

 netif_stop_queue(net);
 priv->tx_skb = skb;
 queue_work(priv->wq, &priv->tx_work);

 return NETDEV_TX_OK;
}

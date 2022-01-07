
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_bytes; int tx_packets; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct enc28j60_net {TYPE_2__* tx_skb; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 int ECON1 ;
 int ECON1_TXRTS ;
 int dev_kfree_skb (TYPE_2__*) ;
 int locked_reg_bfclr (struct enc28j60_net*,int ,int ) ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void enc28j60_tx_clear(struct net_device *ndev, bool err)
{
 struct enc28j60_net *priv = netdev_priv(ndev);

 if (err)
  ndev->stats.tx_errors++;
 else
  ndev->stats.tx_packets++;

 if (priv->tx_skb) {
  if (!err)
   ndev->stats.tx_bytes += priv->tx_skb->len;
  dev_kfree_skb(priv->tx_skb);
  priv->tx_skb = ((void*)0);
 }
 locked_reg_bfclr(priv, ECON1, ECON1_TXRTS);
 netif_wake_queue(ndev);
}

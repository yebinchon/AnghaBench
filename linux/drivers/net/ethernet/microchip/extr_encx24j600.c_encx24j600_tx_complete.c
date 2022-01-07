
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_bytes; int tx_packets; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct encx24j600_priv {int lock; TYPE_2__* tx_skb; struct net_device* ndev; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 int BUG () ;
 int EIR ;
 int TXABTIF ;
 int TXIF ;
 int dev_kfree_skb (TYPE_2__*) ;
 int encx24j600_clr_bits (struct encx24j600_priv*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_dbg (struct encx24j600_priv*,int ,struct net_device*,char*,char*) ;
 int netif_wake_queue (struct net_device*) ;
 int tx_done ;

__attribute__((used)) static void encx24j600_tx_complete(struct encx24j600_priv *priv, bool err)
{
 struct net_device *dev = priv->ndev;

 if (!priv->tx_skb) {
  BUG();
  return;
 }

 mutex_lock(&priv->lock);

 if (err)
  dev->stats.tx_errors++;
 else
  dev->stats.tx_packets++;

 dev->stats.tx_bytes += priv->tx_skb->len;

 encx24j600_clr_bits(priv, EIR, TXIF | TXABTIF);

 netif_dbg(priv, tx_done, dev, "TX Done%s\n", err ? ": Err" : "");

 dev_kfree_skb(priv->tx_skb);
 priv->tx_skb = ((void*)0);

 netif_wake_queue(dev);

 mutex_unlock(&priv->lock);
}

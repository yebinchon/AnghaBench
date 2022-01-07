
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct gve_tx_ring {int req; int q_resources; int netdev_txq; } ;
struct TYPE_3__ {size_t num_queues; } ;
struct gve_priv {TYPE_2__* pdev; struct gve_tx_ring* tx; TYPE_1__ tx_cfg; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {int dev; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int WARN (int,char*) ;
 int dma_wmb () ;
 int gve_maybe_stop_tx (struct gve_tx_ring*,struct sk_buff*) ;
 int gve_tx_add_skb (struct gve_tx_ring*,struct sk_buff*,int *) ;
 int gve_tx_put_doorbell (struct gve_priv*,int ,int) ;
 struct gve_priv* netdev_priv (struct net_device*) ;
 int netdev_tx_sent_queue (int ,int ) ;
 scalar_t__ netdev_xmit_more () ;
 int netif_xmit_stopped (int ) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

netdev_tx_t gve_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct gve_priv *priv = netdev_priv(dev);
 struct gve_tx_ring *tx;
 int nsegs;

 WARN(skb_get_queue_mapping(skb) > priv->tx_cfg.num_queues,
      "skb queue index out of range");
 tx = &priv->tx[skb_get_queue_mapping(skb)];
 if (unlikely(gve_maybe_stop_tx(tx, skb))) {
  dma_wmb();
  gve_tx_put_doorbell(priv, tx->q_resources, tx->req);
  return NETDEV_TX_BUSY;
 }
 nsegs = gve_tx_add_skb(tx, skb, &priv->pdev->dev);

 netdev_tx_sent_queue(tx->netdev_txq, skb->len);
 skb_tx_timestamp(skb);


 tx->req += nsegs;

 if (!netif_xmit_stopped(tx->netdev_txq) && netdev_xmit_more())
  return NETDEV_TX_OK;


 dma_wmb();
 gve_tx_put_doorbell(priv, tx->q_resources, tx->req);
 return NETDEV_TX_OK;
}

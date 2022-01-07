
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; int dev; } ;
struct moxart_mac_priv_t {unsigned int tx_head; unsigned int tx_tail; TYPE_2__** tx_skb; int * tx_len; int * tx_mapping; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 int DMA_TO_DEVICE ;
 unsigned int TX_NEXT (unsigned int) ;
 scalar_t__ TX_WAKE_THRESHOLD ;
 int dev_consume_skb_irq (TYPE_2__*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 scalar_t__ moxart_tx_queue_space (struct net_device*) ;
 struct moxart_mac_priv_t* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void moxart_tx_finished(struct net_device *ndev)
{
 struct moxart_mac_priv_t *priv = netdev_priv(ndev);
 unsigned int tx_head = priv->tx_head;
 unsigned int tx_tail = priv->tx_tail;

 while (tx_tail != tx_head) {
  dma_unmap_single(&ndev->dev, priv->tx_mapping[tx_tail],
     priv->tx_len[tx_tail], DMA_TO_DEVICE);

  ndev->stats.tx_packets++;
  ndev->stats.tx_bytes += priv->tx_skb[tx_tail]->len;

  dev_consume_skb_irq(priv->tx_skb[tx_tail]);
  priv->tx_skb[tx_tail] = ((void*)0);

  tx_tail = TX_NEXT(tx_tail);
 }
 priv->tx_tail = tx_tail;
 if (netif_queue_stopped(ndev) &&
     moxart_tx_queue_space(ndev) >= TX_WAKE_THRESHOLD)
  netif_wake_queue(ndev);
}

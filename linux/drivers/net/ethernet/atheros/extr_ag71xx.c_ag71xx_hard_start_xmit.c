
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct TYPE_10__ {int tx_dropped; } ;
struct net_device {TYPE_5__ stats; } ;
struct ag71xx_ring {int curr; int dirty; scalar_t__ desc_split; TYPE_3__* buf; int order; } ;
struct ag71xx_desc {int ctrl; } ;
struct ag71xx {TYPE_4__* pdev; TYPE_1__* dcfg; struct ag71xx_ring tx_ring; } ;
typedef int netdev_tx_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {int len; struct sk_buff* skb; } ;
struct TYPE_8__ {TYPE_2__ tx; } ;
struct TYPE_6__ {int desc_pktlen_mask; } ;


 int AG71XX_REG_TX_CTRL ;
 int AG71XX_TX_RING_DS_PER_PKT ;
 int BIT (int ) ;
 int DESC_EMPTY ;
 int DMA_TO_DEVICE ;
 int NETDEV_TX_OK ;
 int TX_CTRL_TXE ;
 int ag71xx_fill_dma_desc (struct ag71xx_ring*,int ,int) ;
 struct ag71xx_desc* ag71xx_ring_desc (struct ag71xx_ring*,int) ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dma_map_single (int *,int ,int,int ) ;
 int dma_unmap_single (int *,scalar_t__,int,int ) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int netdev_sent_queue (struct net_device*,int) ;
 int netif_dbg (struct ag71xx*,int ,struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int tx_err ;
 int tx_queued ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t ag71xx_hard_start_xmit(struct sk_buff *skb,
       struct net_device *ndev)
{
 int i, n, ring_min, ring_mask, ring_size;
 struct ag71xx *ag = netdev_priv(ndev);
 struct ag71xx_ring *ring;
 struct ag71xx_desc *desc;
 dma_addr_t dma_addr;

 ring = &ag->tx_ring;
 ring_mask = BIT(ring->order) - 1;
 ring_size = BIT(ring->order);

 if (skb->len <= 4) {
  netif_dbg(ag, tx_err, ndev, "packet len is too small\n");
  goto err_drop;
 }

 dma_addr = dma_map_single(&ag->pdev->dev, skb->data, skb->len,
      DMA_TO_DEVICE);

 i = ring->curr & ring_mask;
 desc = ag71xx_ring_desc(ring, i);


 n = ag71xx_fill_dma_desc(ring, (u32)dma_addr,
     skb->len & ag->dcfg->desc_pktlen_mask);
 if (n < 0)
  goto err_drop_unmap;

 i = (ring->curr + n - 1) & ring_mask;
 ring->buf[i].tx.len = skb->len;
 ring->buf[i].tx.skb = skb;

 netdev_sent_queue(ndev, skb->len);

 skb_tx_timestamp(skb);

 desc->ctrl &= ~DESC_EMPTY;
 ring->curr += n;


 wmb();

 ring_min = 2;
 if (ring->desc_split)
  ring_min *= AG71XX_TX_RING_DS_PER_PKT;

 if (ring->curr - ring->dirty >= ring_size - ring_min) {
  netif_dbg(ag, tx_err, ndev, "tx queue full\n");
  netif_stop_queue(ndev);
 }

 netif_dbg(ag, tx_queued, ndev, "packet injected into TX queue\n");


 ag71xx_wr(ag, AG71XX_REG_TX_CTRL, TX_CTRL_TXE);

 return NETDEV_TX_OK;

err_drop_unmap:
 dma_unmap_single(&ag->pdev->dev, dma_addr, skb->len, DMA_TO_DEVICE);

err_drop:
 ndev->stats.tx_dropped++;

 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}

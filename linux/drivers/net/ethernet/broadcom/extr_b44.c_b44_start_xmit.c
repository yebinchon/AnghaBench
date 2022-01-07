
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct net_device {int dummy; } ;
struct dma_desc {int dummy; } ;
struct b44 {scalar_t__ tx_prod; int flags; int lock; int tx_ring_dma; TYPE_3__* sdev; int dma_offset; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; } ;
typedef int netdev_tx_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {int dma_dev; } ;
struct TYPE_5__ {void* addr; void* ctrl; } ;
struct TYPE_4__ {scalar_t__ mapping; struct sk_buff* skb; } ;


 int B44_DMATX_PTR ;
 int B44_FLAG_BUGGY_TXPTR ;
 int B44_FLAG_REORDER_BUG ;
 int B44_FLAG_TX_RING_HACK ;
 int B44_TX_RING_SIZE ;
 scalar_t__ DESC_CTRL_EOF ;
 scalar_t__ DESC_CTRL_EOT ;
 scalar_t__ DESC_CTRL_IOC ;
 scalar_t__ DESC_CTRL_LEN ;
 scalar_t__ DESC_CTRL_SOF ;
 scalar_t__ DMA_BIT_MASK (int) ;
 int DMA_TO_DEVICE ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ NEXT_TX (scalar_t__) ;
 int TX_BUFFS_AVAIL (struct b44*) ;
 struct sk_buff* alloc_skb (scalar_t__,int) ;
 int b44_sync_dma_desc_for_device (TYPE_3__*,int ,scalar_t__,int ) ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,scalar_t__) ;
 void* cpu_to_le32 (scalar_t__) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ dma_map_single (int ,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,scalar_t__,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netdev_sent_queue (struct net_device*,scalar_t__) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t b44_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct b44 *bp = netdev_priv(dev);
 int rc = NETDEV_TX_OK;
 dma_addr_t mapping;
 u32 len, entry, ctrl;
 unsigned long flags;

 len = skb->len;
 spin_lock_irqsave(&bp->lock, flags);


 if (unlikely(TX_BUFFS_AVAIL(bp) < 1)) {
  netif_stop_queue(dev);
  netdev_err(dev, "BUG! Tx Ring full when queue awake!\n");
  goto err_out;
 }

 mapping = dma_map_single(bp->sdev->dma_dev, skb->data, len, DMA_TO_DEVICE);
 if (dma_mapping_error(bp->sdev->dma_dev, mapping) || mapping + len > DMA_BIT_MASK(30)) {
  struct sk_buff *bounce_skb;


  if (!dma_mapping_error(bp->sdev->dma_dev, mapping))
   dma_unmap_single(bp->sdev->dma_dev, mapping, len,
          DMA_TO_DEVICE);

  bounce_skb = alloc_skb(len, GFP_ATOMIC | GFP_DMA);
  if (!bounce_skb)
   goto err_out;

  mapping = dma_map_single(bp->sdev->dma_dev, bounce_skb->data,
      len, DMA_TO_DEVICE);
  if (dma_mapping_error(bp->sdev->dma_dev, mapping) || mapping + len > DMA_BIT_MASK(30)) {
   if (!dma_mapping_error(bp->sdev->dma_dev, mapping))
    dma_unmap_single(bp->sdev->dma_dev, mapping,
           len, DMA_TO_DEVICE);
   dev_kfree_skb_any(bounce_skb);
   goto err_out;
  }

  skb_copy_from_linear_data(skb, skb_put(bounce_skb, len), len);
  dev_consume_skb_any(skb);
  skb = bounce_skb;
 }

 entry = bp->tx_prod;
 bp->tx_buffers[entry].skb = skb;
 bp->tx_buffers[entry].mapping = mapping;

 ctrl = (len & DESC_CTRL_LEN);
 ctrl |= DESC_CTRL_IOC | DESC_CTRL_SOF | DESC_CTRL_EOF;
 if (entry == (B44_TX_RING_SIZE - 1))
  ctrl |= DESC_CTRL_EOT;

 bp->tx_ring[entry].ctrl = cpu_to_le32(ctrl);
 bp->tx_ring[entry].addr = cpu_to_le32((u32) mapping+bp->dma_offset);

 if (bp->flags & B44_FLAG_TX_RING_HACK)
  b44_sync_dma_desc_for_device(bp->sdev, bp->tx_ring_dma,
                       entry * sizeof(bp->tx_ring[0]),
                       DMA_TO_DEVICE);

 entry = NEXT_TX(entry);

 bp->tx_prod = entry;

 wmb();

 bw32(bp, B44_DMATX_PTR, entry * sizeof(struct dma_desc));
 if (bp->flags & B44_FLAG_BUGGY_TXPTR)
  bw32(bp, B44_DMATX_PTR, entry * sizeof(struct dma_desc));
 if (bp->flags & B44_FLAG_REORDER_BUG)
  br32(bp, B44_DMATX_PTR);

 netdev_sent_queue(dev, skb->len);

 if (TX_BUFFS_AVAIL(bp) < 1)
  netif_stop_queue(dev);

out_unlock:
 spin_unlock_irqrestore(&bp->lock, flags);

 return rc;

err_out:
 rc = NETDEV_TX_BUSY;
 goto out_unlock;
}

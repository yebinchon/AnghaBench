
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
typedef size_t u16 ;
struct sk_buff {unsigned int len; scalar_t__ ip_summed; int data; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct bcm_sysport_tx_ring {scalar_t__ desc_count; size_t curr_desc; size_t size; int lock; int index; struct bcm_sysport_cb* cbs; } ;
struct TYPE_4__ {int tx_dma_failed; } ;
struct bcm_sysport_priv {TYPE_2__ mib; scalar_t__ tsb_en; struct bcm_sysport_tx_ring* tx_rings; TYPE_1__* pdev; } ;
struct bcm_sysport_cb {struct sk_buff* skb; } ;
typedef int netdev_tx_t ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct device dev; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 unsigned int DESC_ADDR_HI_MASK ;
 unsigned int DESC_EOP ;
 unsigned int DESC_L4_CSUM ;
 unsigned int DESC_LEN_SHIFT ;
 unsigned int DESC_SOP ;
 unsigned int DESC_STATUS_SHIFT ;
 int DMA_TO_DEVICE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int TDMA_WRITE_PORT_HI (int ) ;
 int TDMA_WRITE_PORT_LO (int ) ;
 unsigned int TX_STATUS_APP_CRC ;
 struct sk_buff* bcm_sysport_insert_tsb (struct sk_buff*,struct net_device*) ;
 int dma_addr ;
 int dma_len ;
 int dma_map_single (struct device*,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_addr_set (struct bcm_sysport_cb*,int ,int ) ;
 int dma_unmap_len_set (struct bcm_sysport_cb*,int ,unsigned int) ;
 unsigned int lower_32_bits (int ) ;
 int netdev_err (struct net_device*,char*,size_t) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,size_t) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int netif_dbg (struct bcm_sysport_priv*,int ,struct net_device*,char*,int ,scalar_t__,size_t) ;
 int netif_err (struct bcm_sysport_priv*,int ,struct net_device*,char*,int ,unsigned int) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tdma_writel (struct bcm_sysport_priv*,unsigned int,int ) ;
 int tx_err ;
 int tx_queued ;
 scalar_t__ unlikely (int) ;
 unsigned int upper_32_bits (int ) ;

__attribute__((used)) static netdev_tx_t bcm_sysport_xmit(struct sk_buff *skb,
        struct net_device *dev)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 struct device *kdev = &priv->pdev->dev;
 struct bcm_sysport_tx_ring *ring;
 struct bcm_sysport_cb *cb;
 struct netdev_queue *txq;
 u32 len_status, addr_lo;
 unsigned int skb_len;
 unsigned long flags;
 dma_addr_t mapping;
 u16 queue;
 int ret;

 queue = skb_get_queue_mapping(skb);
 txq = netdev_get_tx_queue(dev, queue);
 ring = &priv->tx_rings[queue];


 spin_lock_irqsave(&ring->lock, flags);
 if (unlikely(ring->desc_count == 0)) {
  netif_tx_stop_queue(txq);
  netdev_err(dev, "queue %d awake and ring full!\n", queue);
  ret = NETDEV_TX_BUSY;
  goto out;
 }


 if (priv->tsb_en) {
  skb = bcm_sysport_insert_tsb(skb, dev);
  if (!skb) {
   ret = NETDEV_TX_OK;
   goto out;
  }
 }

 skb_len = skb->len;

 mapping = dma_map_single(kdev, skb->data, skb_len, DMA_TO_DEVICE);
 if (dma_mapping_error(kdev, mapping)) {
  priv->mib.tx_dma_failed++;
  netif_err(priv, tx_err, dev, "DMA map failed at %p (len=%d)\n",
     skb->data, skb_len);
  ret = NETDEV_TX_OK;
  goto out;
 }


 cb = &ring->cbs[ring->curr_desc];
 cb->skb = skb;
 dma_unmap_addr_set(cb, dma_addr, mapping);
 dma_unmap_len_set(cb, dma_len, skb_len);

 addr_lo = lower_32_bits(mapping);
 len_status = upper_32_bits(mapping) & DESC_ADDR_HI_MASK;
 len_status |= (skb_len << DESC_LEN_SHIFT);
 len_status |= (DESC_SOP | DESC_EOP | TX_STATUS_APP_CRC) <<
         DESC_STATUS_SHIFT;
 if (skb->ip_summed == CHECKSUM_PARTIAL)
  len_status |= (DESC_L4_CSUM << DESC_STATUS_SHIFT);

 ring->curr_desc++;
 if (ring->curr_desc == ring->size)
  ring->curr_desc = 0;
 ring->desc_count--;


 tdma_writel(priv, len_status, TDMA_WRITE_PORT_HI(ring->index));
 tdma_writel(priv, addr_lo, TDMA_WRITE_PORT_LO(ring->index));


 if (ring->desc_count == 0)
  netif_tx_stop_queue(txq);

 netif_dbg(priv, tx_queued, dev, "ring=%d desc_count=%d, curr_desc=%d\n",
    ring->index, ring->desc_count, ring->curr_desc);

 ret = NETDEV_TX_OK;
out:
 spin_unlock_irqrestore(&ring->lock, flags);
 return ret;
}

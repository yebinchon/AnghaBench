
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int protocol; int data; } ;
struct TYPE_4__ {unsigned int rx_bytes; int rx_packets; int rx_dropped; int rx_fifo_errors; int rx_frame_errors; int rx_crc_errors; int rx_length_errors; int rx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int rx_desc_count; int rx_curr_desc; int rx_ring_size; int dma_desc_shift; int rx_chan; int dma_chan_en_mask; struct sk_buff** rx_skb; int rx_skb_size; TYPE_1__* pdev; int napi; int enet_is_sw; struct bcm_enet_desc* rx_desc_cpu; } ;
struct bcm_enet_desc {int len_stat; int address; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMADESC_CRC_MASK ;
 int DMADESC_ERR_MASK ;
 int DMADESC_ESOP_MASK ;
 int DMADESC_LENGTH_MASK ;
 int DMADESC_LENGTH_SHIFT ;
 int DMADESC_OVSIZE_MASK ;
 int DMADESC_OV_MASK ;
 int DMADESC_OWNER_MASK ;
 int DMADESC_UNDER_MASK ;
 int DMA_FROM_DEVICE ;
 int ENETDMAC_CHANCFG ;
 int bcm_enet_refill_rx (struct net_device*) ;
 unsigned int copybreak ;
 int dma_sync_single_for_cpu (struct device*,int ,unsigned int,int ) ;
 int dma_sync_single_for_device (struct device*,int ,unsigned int,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int enet_dmac_writel (struct bcm_enet_priv*,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int memcpy (int ,int ,unsigned int) ;
 struct sk_buff* napi_alloc_skb (int *,unsigned int) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int rmb () ;
 int skb_put (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bcm_enet_receive_queue(struct net_device *dev, int budget)
{
 struct bcm_enet_priv *priv;
 struct device *kdev;
 int processed;

 priv = netdev_priv(dev);
 kdev = &priv->pdev->dev;
 processed = 0;



 if (budget > priv->rx_desc_count)
  budget = priv->rx_desc_count;

 do {
  struct bcm_enet_desc *desc;
  struct sk_buff *skb;
  int desc_idx;
  u32 len_stat;
  unsigned int len;

  desc_idx = priv->rx_curr_desc;
  desc = &priv->rx_desc_cpu[desc_idx];



  rmb();

  len_stat = desc->len_stat;


  if (len_stat & DMADESC_OWNER_MASK)
   break;

  processed++;
  priv->rx_curr_desc++;
  if (priv->rx_curr_desc == priv->rx_ring_size)
   priv->rx_curr_desc = 0;
  priv->rx_desc_count--;



  if ((len_stat & (DMADESC_ESOP_MASK >> priv->dma_desc_shift)) !=
   (DMADESC_ESOP_MASK >> priv->dma_desc_shift)) {
   dev->stats.rx_dropped++;
   continue;
  }


  if (!priv->enet_is_sw &&
      unlikely(len_stat & DMADESC_ERR_MASK)) {
   dev->stats.rx_errors++;

   if (len_stat & DMADESC_OVSIZE_MASK)
    dev->stats.rx_length_errors++;
   if (len_stat & DMADESC_CRC_MASK)
    dev->stats.rx_crc_errors++;
   if (len_stat & DMADESC_UNDER_MASK)
    dev->stats.rx_frame_errors++;
   if (len_stat & DMADESC_OV_MASK)
    dev->stats.rx_fifo_errors++;
   continue;
  }


  skb = priv->rx_skb[desc_idx];
  len = (len_stat & DMADESC_LENGTH_MASK) >> DMADESC_LENGTH_SHIFT;

  len -= 4;

  if (len < copybreak) {
   struct sk_buff *nskb;

   nskb = napi_alloc_skb(&priv->napi, len);
   if (!nskb) {

    dev->stats.rx_dropped++;
    continue;
   }

   dma_sync_single_for_cpu(kdev, desc->address,
      len, DMA_FROM_DEVICE);
   memcpy(nskb->data, skb->data, len);
   dma_sync_single_for_device(kdev, desc->address,
         len, DMA_FROM_DEVICE);
   skb = nskb;
  } else {
   dma_unmap_single(&priv->pdev->dev, desc->address,
      priv->rx_skb_size, DMA_FROM_DEVICE);
   priv->rx_skb[desc_idx] = ((void*)0);
  }

  skb_put(skb, len);
  skb->protocol = eth_type_trans(skb, dev);
  dev->stats.rx_packets++;
  dev->stats.rx_bytes += len;
  netif_receive_skb(skb);

 } while (--budget > 0);

 if (processed || !priv->rx_desc_count) {
  bcm_enet_refill_rx(dev);


  enet_dmac_writel(priv, priv->dma_chan_en_mask,
      ENETDMAC_CHANCFG, priv->rx_chan);
 }

 return processed;
}

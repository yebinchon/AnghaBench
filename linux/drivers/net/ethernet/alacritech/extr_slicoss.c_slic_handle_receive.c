
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct slic_rx_queue {size_t done_idx; size_t put_idx; int len; struct slic_rx_buffer* rxbuffs; } ;
struct slic_rx_desc {int length; int status; } ;
struct slic_rx_buffer {struct sk_buff* skb; scalar_t__ addr_offset; } ;
struct TYPE_4__ {unsigned int rx_bytes; unsigned int rx_packets; int syncp; } ;
struct slic_device {TYPE_2__ stats; int napi; TYPE_1__* pdev; struct net_device* netdev; struct slic_rx_queue rxq; } ;
struct sk_buff {int ip_summed; int protocol; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_dest; } ;
struct TYPE_3__ {int dev; } ;


 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 int SLIC_INC_STATS_COUNTER (TYPE_2__*,int ) ;
 unsigned int SLIC_IRHDDR_ERR ;
 unsigned int SLIC_IRHDDR_FLEN_MSK ;
 unsigned int SLIC_IRHDDR_SVALID ;
 int SLIC_RX_BUFF_HDR_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_sync_single_for_cpu (int *,int ,scalar_t__,int ) ;
 int dma_sync_single_for_device (int *,int ,scalar_t__,int ) ;
 int dma_unmap_addr (struct slic_rx_buffer*,int ) ;
 int dma_unmap_len (struct slic_rx_buffer*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 unsigned int le32_to_cpu (int ) ;
 int map_addr ;
 int map_len ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int rx_mcasts ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int slic_handle_frame_error (struct slic_device*,struct sk_buff*) ;
 size_t slic_next_queue_idx (size_t,int ) ;
 int slic_refill_rx_queue (struct slic_device*,int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void slic_handle_receive(struct slic_device *sdev, unsigned int todo,
    unsigned int *done)
{
 struct slic_rx_queue *rxq = &sdev->rxq;
 struct net_device *dev = sdev->netdev;
 struct slic_rx_buffer *buff;
 struct slic_rx_desc *desc;
 unsigned int frames = 0;
 unsigned int bytes = 0;
 struct sk_buff *skb;
 u32 status;
 u32 len;

 while (todo && (rxq->done_idx != rxq->put_idx)) {
  buff = &rxq->rxbuffs[rxq->done_idx];

  skb = buff->skb;
  if (!skb)
   break;

  desc = (struct slic_rx_desc *)skb->data;

  dma_sync_single_for_cpu(&sdev->pdev->dev,
     dma_unmap_addr(buff, map_addr),
     buff->addr_offset + sizeof(*desc),
     DMA_FROM_DEVICE);

  status = le32_to_cpu(desc->status);
  if (!(status & SLIC_IRHDDR_SVALID)) {
   dma_sync_single_for_device(&sdev->pdev->dev,
         dma_unmap_addr(buff,
          map_addr),
         buff->addr_offset +
         sizeof(*desc),
         DMA_FROM_DEVICE);
   break;
  }

  buff->skb = ((void*)0);

  dma_unmap_single(&sdev->pdev->dev,
     dma_unmap_addr(buff, map_addr),
     dma_unmap_len(buff, map_len),
     DMA_FROM_DEVICE);


  skb_reserve(skb, SLIC_RX_BUFF_HDR_SIZE);

  if (unlikely(status & SLIC_IRHDDR_ERR)) {
   slic_handle_frame_error(sdev, skb);
   dev_kfree_skb_any(skb);
  } else {
   struct ethhdr *eh = (struct ethhdr *)skb->data;

   if (is_multicast_ether_addr(eh->h_dest))
    SLIC_INC_STATS_COUNTER(&sdev->stats, rx_mcasts);

   len = le32_to_cpu(desc->length) & SLIC_IRHDDR_FLEN_MSK;
   skb_put(skb, len);
   skb->protocol = eth_type_trans(skb, dev);
   skb->ip_summed = CHECKSUM_UNNECESSARY;

   napi_gro_receive(&sdev->napi, skb);

   bytes += len;
   frames++;
  }
  rxq->done_idx = slic_next_queue_idx(rxq->done_idx, rxq->len);
  todo--;
 }

 u64_stats_update_begin(&sdev->stats.syncp);
 sdev->stats.rx_bytes += bytes;
 sdev->stats.rx_packets += frames;
 u64_stats_update_end(&sdev->stats.syncp);

 slic_refill_rx_queue(sdev, GFP_ATOMIC);
}

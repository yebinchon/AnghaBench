
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {unsigned int len; unsigned int csum; int data; int ip_summed; int protocol; } ;
struct napi_struct {int dummy; } ;
struct TYPE_9__ {unsigned int rx_bytes; int rx_packets; int rx_dropped; } ;
struct macb_queue {TYPE_3__ stats; struct sk_buff** rx_skbuff; int rx_tail; struct macb* bp; } ;
struct macb_dma_desc {int addr; int ctrl; } ;
struct macb {int rx_frm_len_mask; TYPE_4__* dev; int rx_buffer_size; TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {unsigned int rx_bytes; int rx_packets; int rx_dropped; } ;
struct TYPE_10__ {int features; int flags; TYPE_2__ stats; } ;
struct TYPE_7__ {int dev; } ;


 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 int DUMP_PREFIX_ADDRESS ;
 int GEM_BFEXT (int ,int) ;
 int GEM_RX_CSUM_CHECKED_MASK ;
 int IFF_PROMISC ;
 int KERN_DEBUG ;
 int MACB_BIT (int ) ;
 int NETIF_F_RXCSUM ;
 int RX_CSUM ;
 int RX_EOF ;
 int RX_SOF ;
 int RX_USED ;
 int dma_rmb () ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,TYPE_4__*) ;
 int gem_ptp_do_rxstamp (struct macb*,struct sk_buff*,struct macb_dma_desc*) ;
 int gem_rx_refill (struct macb_queue*) ;
 int macb_get_addr (struct macb*,struct macb_dma_desc*) ;
 struct macb_dma_desc* macb_rx_desc (struct macb_queue*,unsigned int) ;
 unsigned int macb_rx_ring_wrap (struct macb*,int ) ;
 int napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int netdev_err (TYPE_4__*,char*) ;
 int netdev_vdbg (TYPE_4__*,char*,unsigned int,unsigned int) ;
 int print_hex_dump (int ,char*,int ,int,int,int ,int,int) ;
 int rmb () ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int gem_rx(struct macb_queue *queue, struct napi_struct *napi,
    int budget)
{
 struct macb *bp = queue->bp;
 unsigned int len;
 unsigned int entry;
 struct sk_buff *skb;
 struct macb_dma_desc *desc;
 int count = 0;

 while (count < budget) {
  u32 ctrl;
  dma_addr_t addr;
  bool rxused;

  entry = macb_rx_ring_wrap(bp, queue->rx_tail);
  desc = macb_rx_desc(queue, entry);


  rmb();

  rxused = (desc->addr & MACB_BIT(RX_USED)) ? 1 : 0;
  addr = macb_get_addr(bp, desc);

  if (!rxused)
   break;


  dma_rmb();

  ctrl = desc->ctrl;

  queue->rx_tail++;
  count++;

  if (!(ctrl & MACB_BIT(RX_SOF) && ctrl & MACB_BIT(RX_EOF))) {
   netdev_err(bp->dev,
       "not whole frame pointed by descriptor\n");
   bp->dev->stats.rx_dropped++;
   queue->stats.rx_dropped++;
   break;
  }
  skb = queue->rx_skbuff[entry];
  if (unlikely(!skb)) {
   netdev_err(bp->dev,
       "inconsistent Rx descriptor chain\n");
   bp->dev->stats.rx_dropped++;
   queue->stats.rx_dropped++;
   break;
  }

  queue->rx_skbuff[entry] = ((void*)0);
  len = ctrl & bp->rx_frm_len_mask;

  netdev_vdbg(bp->dev, "gem_rx %u (len %u)\n", entry, len);

  skb_put(skb, len);
  dma_unmap_single(&bp->pdev->dev, addr,
     bp->rx_buffer_size, DMA_FROM_DEVICE);

  skb->protocol = eth_type_trans(skb, bp->dev);
  skb_checksum_none_assert(skb);
  if (bp->dev->features & NETIF_F_RXCSUM &&
      !(bp->dev->flags & IFF_PROMISC) &&
      GEM_BFEXT(RX_CSUM, ctrl) & GEM_RX_CSUM_CHECKED_MASK)
   skb->ip_summed = CHECKSUM_UNNECESSARY;

  bp->dev->stats.rx_packets++;
  queue->stats.rx_packets++;
  bp->dev->stats.rx_bytes += skb->len;
  queue->stats.rx_bytes += skb->len;

  gem_ptp_do_rxstamp(bp, skb, desc);
  napi_gro_receive(napi, skb);
 }

 gem_rx_refill(queue);

 return count;
}

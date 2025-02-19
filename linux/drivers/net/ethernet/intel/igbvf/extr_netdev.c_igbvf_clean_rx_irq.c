
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ status_error; int vlan; int length; } ;
struct TYPE_8__ {int hdr_info; } ;
struct TYPE_9__ {TYPE_1__ hs_rss; } ;
struct TYPE_10__ {TYPE_2__ lo_dword; } ;
struct TYPE_12__ {TYPE_4__ upper; TYPE_3__ lower; } ;
union e1000_adv_rx_desc {TYPE_5__ wb; } ;
typedef int u32 ;
struct sk_buff {int data_len; int truesize; int protocol; scalar_t__ len; union e1000_adv_rx_desc* data; } ;
struct pci_dev {int dev; } ;
struct TYPE_13__ {unsigned int rx_bytes; unsigned int rx_packets; } ;
struct net_device {TYPE_6__ stats; } ;
struct igbvf_ring {unsigned int next_to_clean; unsigned int count; struct igbvf_buffer* buffer_info; } ;
struct igbvf_buffer {scalar_t__ dma; struct sk_buff* skb; int * page; int page_offset; scalar_t__ page_dma; } ;
struct igbvf_adapter {int rx_ps_hdr_size; int rx_buffer_len; unsigned int total_rx_packets; unsigned int total_rx_bytes; struct pci_dev* pdev; struct net_device* netdev; struct igbvf_ring* rx_ring; } ;
struct TYPE_14__ {int nr_frags; } ;


 int DMA_FROM_DEVICE ;
 int E1000_RXDADV_HDRBUFLEN_MASK ;
 int E1000_RXDADV_HDRBUFLEN_SHIFT ;
 int E1000_RXDEXT_ERR_FRAME_ERR_MASK ;
 int E1000_RXD_STAT_DD ;
 int E1000_RXD_STAT_EOP ;
 int IGBVF_RX_BUFFER_WRITE ;
 union e1000_adv_rx_desc* IGBVF_RX_DESC_ADV (struct igbvf_ring,unsigned int) ;
 union e1000_adv_rx_desc* NET_IP_ALIGN ;
 int PAGE_SIZE ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_page (int *,scalar_t__,int,int ) ;
 int dma_unmap_single (int *,scalar_t__,int,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int get_page (int *) ;
 int igbvf_alloc_rx_buffers (struct igbvf_ring*,int) ;
 int igbvf_desc_unused (struct igbvf_ring*) ;
 int igbvf_receive_skb (struct igbvf_adapter*,struct net_device*,struct sk_buff*,int,int ) ;
 int igbvf_rx_checksum_adv (struct igbvf_adapter*,int,struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 int page_count (int *) ;
 int prefetch (union e1000_adv_rx_desc*) ;
 int rmb () ;
 int skb_fill_page_desc (struct sk_buff*,int ,int *,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 TYPE_7__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static bool igbvf_clean_rx_irq(struct igbvf_adapter *adapter,
          int *work_done, int work_to_do)
{
 struct igbvf_ring *rx_ring = adapter->rx_ring;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 union e1000_adv_rx_desc *rx_desc, *next_rxd;
 struct igbvf_buffer *buffer_info, *next_buffer;
 struct sk_buff *skb;
 bool cleaned = 0;
 int cleaned_count = 0;
 unsigned int total_bytes = 0, total_packets = 0;
 unsigned int i;
 u32 length, hlen, staterr;

 i = rx_ring->next_to_clean;
 rx_desc = IGBVF_RX_DESC_ADV(*rx_ring, i);
 staterr = le32_to_cpu(rx_desc->wb.upper.status_error);

 while (staterr & E1000_RXD_STAT_DD) {
  if (*work_done >= work_to_do)
   break;
  (*work_done)++;
  rmb();

  buffer_info = &rx_ring->buffer_info[i];






  hlen = (le16_to_cpu(rx_desc->wb.lower.lo_dword.hs_rss.hdr_info)
         & E1000_RXDADV_HDRBUFLEN_MASK) >>
         E1000_RXDADV_HDRBUFLEN_SHIFT;
  if (hlen > adapter->rx_ps_hdr_size)
   hlen = adapter->rx_ps_hdr_size;

  length = le16_to_cpu(rx_desc->wb.upper.length);
  cleaned = 1;
  cleaned_count++;

  skb = buffer_info->skb;
  prefetch(skb->data - NET_IP_ALIGN);
  buffer_info->skb = ((void*)0);
  if (!adapter->rx_ps_hdr_size) {
   dma_unmap_single(&pdev->dev, buffer_info->dma,
      adapter->rx_buffer_len,
      DMA_FROM_DEVICE);
   buffer_info->dma = 0;
   skb_put(skb, length);
   goto send_up;
  }

  if (!skb_shinfo(skb)->nr_frags) {
   dma_unmap_single(&pdev->dev, buffer_info->dma,
      adapter->rx_ps_hdr_size,
      DMA_FROM_DEVICE);
   buffer_info->dma = 0;
   skb_put(skb, hlen);
  }

  if (length) {
   dma_unmap_page(&pdev->dev, buffer_info->page_dma,
           PAGE_SIZE / 2,
           DMA_FROM_DEVICE);
   buffer_info->page_dma = 0;

   skb_fill_page_desc(skb, skb_shinfo(skb)->nr_frags,
        buffer_info->page,
        buffer_info->page_offset,
        length);

   if ((adapter->rx_buffer_len > (PAGE_SIZE / 2)) ||
       (page_count(buffer_info->page) != 1))
    buffer_info->page = ((void*)0);
   else
    get_page(buffer_info->page);

   skb->len += length;
   skb->data_len += length;
   skb->truesize += PAGE_SIZE / 2;
  }
send_up:
  i++;
  if (i == rx_ring->count)
   i = 0;
  next_rxd = IGBVF_RX_DESC_ADV(*rx_ring, i);
  prefetch(next_rxd);
  next_buffer = &rx_ring->buffer_info[i];

  if (!(staterr & E1000_RXD_STAT_EOP)) {
   buffer_info->skb = next_buffer->skb;
   buffer_info->dma = next_buffer->dma;
   next_buffer->skb = skb;
   next_buffer->dma = 0;
   goto next_desc;
  }

  if (staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) {
   dev_kfree_skb_irq(skb);
   goto next_desc;
  }

  total_bytes += skb->len;
  total_packets++;

  igbvf_rx_checksum_adv(adapter, staterr, skb);

  skb->protocol = eth_type_trans(skb, netdev);

  igbvf_receive_skb(adapter, netdev, skb, staterr,
      rx_desc->wb.upper.vlan);

next_desc:
  rx_desc->wb.upper.status_error = 0;


  if (cleaned_count >= IGBVF_RX_BUFFER_WRITE) {
   igbvf_alloc_rx_buffers(rx_ring, cleaned_count);
   cleaned_count = 0;
  }


  rx_desc = next_rxd;
  buffer_info = next_buffer;

  staterr = le32_to_cpu(rx_desc->wb.upper.status_error);
 }

 rx_ring->next_to_clean = i;
 cleaned_count = igbvf_desc_unused(rx_ring);

 if (cleaned_count)
  igbvf_alloc_rx_buffers(rx_ring, cleaned_count);

 adapter->total_rx_packets += total_packets;
 adapter->total_rx_bytes += total_bytes;
 netdev->stats.rx_bytes += total_bytes;
 netdev->stats.rx_packets += total_packets;
 return cleaned;
}

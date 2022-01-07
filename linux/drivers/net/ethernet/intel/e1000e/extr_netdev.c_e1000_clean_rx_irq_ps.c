
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int status_error; int vlan; int length0; } ;
struct TYPE_9__ {int header_status; int * length; } ;
struct TYPE_6__ {int rss; } ;
struct TYPE_7__ {TYPE_1__ hi_dword; } ;
struct TYPE_10__ {TYPE_3__ middle; TYPE_4__ upper; TYPE_2__ lower; } ;
union e1000_rx_desc_packet_split {TYPE_5__ wb; } ;
typedef int u8 ;
typedef int u32 ;
struct sk_buff {int data_len; scalar_t__ len; int truesize; union e1000_rx_desc_packet_split* data; } ;
struct pci_dev {int dev; } ;
struct net_device {int features; } ;
struct e1000_ring {unsigned int next_to_clean; unsigned int count; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_ps_page {int * page; scalar_t__ dma; } ;
struct e1000_hw {int dummy; } ;
struct e1000_buffer {struct sk_buff* skb; struct e1000_ps_page* ps_pages; scalar_t__ dma; } ;
struct e1000_adapter {int rx_ps_bsize0; int flags2; unsigned int total_rx_bytes; unsigned int total_rx_packets; int (* alloc_rx_buf ) (struct e1000_ring*,int,int ) ;int rx_hdr_split; struct pci_dev* pdev; struct net_device* netdev; struct e1000_hw hw; } ;


 int DMA_FROM_DEVICE ;
 int E1000_RXDEXT_ERR_FRAME_ERR_MASK ;
 int E1000_RXDPS_HDRSTAT_HDRSP ;
 int E1000_RXD_STAT_DD ;
 int E1000_RXD_STAT_EOP ;
 int E1000_RX_BUFFER_WRITE ;
 union e1000_rx_desc_packet_split* E1000_RX_DESC_PS (struct e1000_ring,unsigned int) ;
 int FLAG2_CRC_STRIPPING ;
 int FLAG2_IS_DISCARDING ;
 int GFP_ATOMIC ;
 int NETIF_F_RXALL ;
 int NETIF_F_RXFCS ;
 union e1000_rx_desc_packet_split* NET_IP_ALIGN ;
 scalar_t__ PAGE_SIZE ;
 unsigned int PS_PAGE_BUFFERS ;
 int copybreak ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_rmb () ;
 int dma_sync_single_for_cpu (int *,scalar_t__,scalar_t__,int ) ;
 int dma_sync_single_for_device (int *,scalar_t__,scalar_t__,int ) ;
 int dma_unmap_page (int *,scalar_t__,scalar_t__,int ) ;
 int dma_unmap_single (int *,scalar_t__,int,int ) ;
 int e1000_desc_unused (struct e1000_ring*) ;
 int e1000_receive_skb (struct e1000_adapter*,struct net_device*,struct sk_buff*,int,int ) ;
 int e1000_rx_checksum (struct e1000_adapter*,int,struct sk_buff*) ;
 int e1000_rx_hash (struct net_device*,int ,struct sk_buff*) ;
 int e_dbg (char*) ;
 int * kmap_atomic (int *) ;
 int kunmap_atomic (int *) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int *,int) ;
 int prefetch (union e1000_rx_desc_packet_split*) ;
 int pskb_trim (struct sk_buff*,scalar_t__) ;
 int skb_fill_page_desc (struct sk_buff*,unsigned int,int *,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int stub1 (struct e1000_ring*,int,int ) ;
 int stub2 (struct e1000_ring*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool e1000_clean_rx_irq_ps(struct e1000_ring *rx_ring, int *work_done,
      int work_to_do)
{
 struct e1000_adapter *adapter = rx_ring->adapter;
 struct e1000_hw *hw = &adapter->hw;
 union e1000_rx_desc_packet_split *rx_desc, *next_rxd;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_buffer *buffer_info, *next_buffer;
 struct e1000_ps_page *ps_page;
 struct sk_buff *skb;
 unsigned int i, j;
 u32 length, staterr;
 int cleaned_count = 0;
 bool cleaned = 0;
 unsigned int total_rx_bytes = 0, total_rx_packets = 0;

 i = rx_ring->next_to_clean;
 rx_desc = E1000_RX_DESC_PS(*rx_ring, i);
 staterr = le32_to_cpu(rx_desc->wb.middle.status_error);
 buffer_info = &rx_ring->buffer_info[i];

 while (staterr & E1000_RXD_STAT_DD) {
  if (*work_done >= work_to_do)
   break;
  (*work_done)++;
  skb = buffer_info->skb;
  dma_rmb();


  prefetch(skb->data - NET_IP_ALIGN);

  i++;
  if (i == rx_ring->count)
   i = 0;
  next_rxd = E1000_RX_DESC_PS(*rx_ring, i);
  prefetch(next_rxd);

  next_buffer = &rx_ring->buffer_info[i];

  cleaned = 1;
  cleaned_count++;
  dma_unmap_single(&pdev->dev, buffer_info->dma,
     adapter->rx_ps_bsize0, DMA_FROM_DEVICE);
  buffer_info->dma = 0;


  if (!(staterr & E1000_RXD_STAT_EOP))
   adapter->flags2 |= FLAG2_IS_DISCARDING;

  if (adapter->flags2 & FLAG2_IS_DISCARDING) {
   e_dbg("Packet Split buffers didn't pick up the full packet\n");
   dev_kfree_skb_irq(skb);
   if (staterr & E1000_RXD_STAT_EOP)
    adapter->flags2 &= ~FLAG2_IS_DISCARDING;
   goto next_desc;
  }

  if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
        !(netdev->features & NETIF_F_RXALL))) {
   dev_kfree_skb_irq(skb);
   goto next_desc;
  }

  length = le16_to_cpu(rx_desc->wb.middle.length0);

  if (!length) {
   e_dbg("Last part of the packet spanning multiple descriptors\n");
   dev_kfree_skb_irq(skb);
   goto next_desc;
  }


  skb_put(skb, length);

  {



   int l1 = le16_to_cpu(rx_desc->wb.upper.length[0]);






   if (l1 && (l1 <= copybreak) &&
       ((length + l1) <= adapter->rx_ps_bsize0)) {
    u8 *vaddr;

    ps_page = &buffer_info->ps_pages[0];





    dma_sync_single_for_cpu(&pdev->dev,
       ps_page->dma,
       PAGE_SIZE,
       DMA_FROM_DEVICE);
    vaddr = kmap_atomic(ps_page->page);
    memcpy(skb_tail_pointer(skb), vaddr, l1);
    kunmap_atomic(vaddr);
    dma_sync_single_for_device(&pdev->dev,
          ps_page->dma,
          PAGE_SIZE,
          DMA_FROM_DEVICE);


    if (!(adapter->flags2 & FLAG2_CRC_STRIPPING)) {
     if (!(netdev->features & NETIF_F_RXFCS))
      l1 -= 4;
    }

    skb_put(skb, l1);
    goto copydone;
   }
  }

  for (j = 0; j < PS_PAGE_BUFFERS; j++) {
   length = le16_to_cpu(rx_desc->wb.upper.length[j]);
   if (!length)
    break;

   ps_page = &buffer_info->ps_pages[j];
   dma_unmap_page(&pdev->dev, ps_page->dma, PAGE_SIZE,
           DMA_FROM_DEVICE);
   ps_page->dma = 0;
   skb_fill_page_desc(skb, j, ps_page->page, 0, length);
   ps_page->page = ((void*)0);
   skb->len += length;
   skb->data_len += length;
   skb->truesize += PAGE_SIZE;
  }




  if (!(adapter->flags2 & FLAG2_CRC_STRIPPING)) {
   if (!(netdev->features & NETIF_F_RXFCS))
    pskb_trim(skb, skb->len - 4);
  }

copydone:
  total_rx_bytes += skb->len;
  total_rx_packets++;

  e1000_rx_checksum(adapter, staterr, skb);

  e1000_rx_hash(netdev, rx_desc->wb.lower.hi_dword.rss, skb);

  if (rx_desc->wb.upper.header_status &
      cpu_to_le16(E1000_RXDPS_HDRSTAT_HDRSP))
   adapter->rx_hdr_split++;

  e1000_receive_skb(adapter, netdev, skb, staterr,
      rx_desc->wb.middle.vlan);

next_desc:
  rx_desc->wb.middle.status_error &= cpu_to_le32(~0xFF);
  buffer_info->skb = ((void*)0);


  if (cleaned_count >= E1000_RX_BUFFER_WRITE) {
   adapter->alloc_rx_buf(rx_ring, cleaned_count,
           GFP_ATOMIC);
   cleaned_count = 0;
  }


  rx_desc = next_rxd;
  buffer_info = next_buffer;

  staterr = le32_to_cpu(rx_desc->wb.middle.status_error);
 }
 rx_ring->next_to_clean = i;

 cleaned_count = e1000_desc_unused(rx_ring);
 if (cleaned_count)
  adapter->alloc_rx_buf(rx_ring, cleaned_count, GFP_ATOMIC);

 adapter->total_rx_bytes += total_rx_bytes;
 adapter->total_rx_packets += total_rx_packets;
 return cleaned;
}

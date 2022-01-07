
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer_addr; } ;
union e1000_rx_desc_extended {TYPE_1__ read; } ;
struct sk_buff {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct e1000_ring {unsigned int next_to_use; unsigned int count; int tail; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_buffer {scalar_t__ dma; scalar_t__ page; struct sk_buff* skb; } ;
struct e1000_adapter {int flags2; int alloc_rx_buff_failed; struct pci_dev* pdev; struct net_device* netdev; } ;
typedef int gfp_t ;


 int DMA_FROM_DEVICE ;
 union e1000_rx_desc_extended* E1000_RX_DESC_EXT (struct e1000_ring,unsigned int) ;
 int FLAG2_PCIM2PCI_ARBITER_WA ;
 int PAGE_SIZE ;
 struct sk_buff* __netdev_alloc_skb_ip_align (struct net_device*,unsigned int,int ) ;
 scalar_t__ alloc_page (int ) ;
 int cpu_to_le64 (scalar_t__) ;
 scalar_t__ dma_map_page (int *,scalar_t__,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int e1000e_update_rdt_wa (struct e1000_ring*,unsigned int) ;
 scalar_t__ likely (int) ;
 int skb_trim (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void e1000_alloc_jumbo_rx_buffers(struct e1000_ring *rx_ring,
      int cleaned_count, gfp_t gfp)
{
 struct e1000_adapter *adapter = rx_ring->adapter;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 union e1000_rx_desc_extended *rx_desc;
 struct e1000_buffer *buffer_info;
 struct sk_buff *skb;
 unsigned int i;
 unsigned int bufsz = 256 - 16;

 i = rx_ring->next_to_use;
 buffer_info = &rx_ring->buffer_info[i];

 while (cleaned_count--) {
  skb = buffer_info->skb;
  if (skb) {
   skb_trim(skb, 0);
   goto check_page;
  }

  skb = __netdev_alloc_skb_ip_align(netdev, bufsz, gfp);
  if (unlikely(!skb)) {

   adapter->alloc_rx_buff_failed++;
   break;
  }

  buffer_info->skb = skb;
check_page:

  if (!buffer_info->page) {
   buffer_info->page = alloc_page(gfp);
   if (unlikely(!buffer_info->page)) {
    adapter->alloc_rx_buff_failed++;
    break;
   }
  }

  if (!buffer_info->dma) {
   buffer_info->dma = dma_map_page(&pdev->dev,
       buffer_info->page, 0,
       PAGE_SIZE,
       DMA_FROM_DEVICE);
   if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
    adapter->alloc_rx_buff_failed++;
    break;
   }
  }

  rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
  rx_desc->read.buffer_addr = cpu_to_le64(buffer_info->dma);

  if (unlikely(++i == rx_ring->count))
   i = 0;
  buffer_info = &rx_ring->buffer_info[i];
 }

 if (likely(rx_ring->next_to_use != i)) {
  rx_ring->next_to_use = i;
  if (unlikely(i-- == 0))
   i = (rx_ring->count - 1);






  wmb();
  if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
   e1000e_update_rdt_wa(rx_ring, i);
  else
   writel(i, rx_ring->tail);
 }
}

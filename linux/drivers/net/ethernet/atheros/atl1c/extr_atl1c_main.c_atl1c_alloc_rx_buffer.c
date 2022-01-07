
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sk_buff {void* data; } ;
struct pci_dev {int dev; } ;
struct atl1c_rx_free_desc {int buffer_addr; } ;
struct atl1c_rfd_ring {size_t next_to_use; size_t count; struct atl1c_buffer* buffer_info; } ;
struct atl1c_buffer {int flags; int dma; scalar_t__ length; struct sk_buff* skb; } ;
struct atl1c_adapter {int hw; int netdev; scalar_t__ rx_buffer_len; struct pci_dev* pdev; struct atl1c_rfd_ring rfd_ring; } ;
typedef int dma_addr_t ;


 int ATL1C_BUFFER_BUSY ;
 int ATL1C_BUFFER_FREE ;
 int ATL1C_PCIMAP_FROMDEVICE ;
 int ATL1C_PCIMAP_SINGLE ;
 struct atl1c_rx_free_desc* ATL1C_RFD_DESC (struct atl1c_rfd_ring*,size_t) ;
 int ATL1C_SET_BUFFER_STATE (struct atl1c_buffer*,int) ;
 int ATL1C_SET_PCIMAP_TYPE (struct atl1c_buffer*,int ,int ) ;
 int AT_WRITE_REG (int *,int ,int) ;
 int MB_RFDX_PROD_IDX_MASK ;
 int PCI_DMA_FROMDEVICE ;
 int REG_MB_RFD0_PROD_IDX ;
 struct sk_buff* atl1c_alloc_skb (struct atl1c_adapter*) ;
 int cpu_to_le64 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ netif_msg_rx_err (struct atl1c_adapter*) ;
 int netif_warn (struct atl1c_adapter*,int ,int ,char*) ;
 int pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,void*,scalar_t__,int ) ;
 int rx_err ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int atl1c_alloc_rx_buffer(struct atl1c_adapter *adapter)
{
 struct atl1c_rfd_ring *rfd_ring = &adapter->rfd_ring;
 struct pci_dev *pdev = adapter->pdev;
 struct atl1c_buffer *buffer_info, *next_info;
 struct sk_buff *skb;
 void *vir_addr = ((void*)0);
 u16 num_alloc = 0;
 u16 rfd_next_to_use, next_next;
 struct atl1c_rx_free_desc *rfd_desc;
 dma_addr_t mapping;

 next_next = rfd_next_to_use = rfd_ring->next_to_use;
 if (++next_next == rfd_ring->count)
  next_next = 0;
 buffer_info = &rfd_ring->buffer_info[rfd_next_to_use];
 next_info = &rfd_ring->buffer_info[next_next];

 while (next_info->flags & ATL1C_BUFFER_FREE) {
  rfd_desc = ATL1C_RFD_DESC(rfd_ring, rfd_next_to_use);

  skb = atl1c_alloc_skb(adapter);
  if (unlikely(!skb)) {
   if (netif_msg_rx_err(adapter))
    dev_warn(&pdev->dev, "alloc rx buffer failed\n");
   break;
  }






  vir_addr = skb->data;
  ATL1C_SET_BUFFER_STATE(buffer_info, ATL1C_BUFFER_BUSY);
  buffer_info->skb = skb;
  buffer_info->length = adapter->rx_buffer_len;
  mapping = pci_map_single(pdev, vir_addr,
      buffer_info->length,
      PCI_DMA_FROMDEVICE);
  if (unlikely(pci_dma_mapping_error(pdev, mapping))) {
   dev_kfree_skb(skb);
   buffer_info->skb = ((void*)0);
   buffer_info->length = 0;
   ATL1C_SET_BUFFER_STATE(buffer_info, ATL1C_BUFFER_FREE);
   netif_warn(adapter, rx_err, adapter->netdev, "RX pci_map_single failed");
   break;
  }
  buffer_info->dma = mapping;
  ATL1C_SET_PCIMAP_TYPE(buffer_info, ATL1C_PCIMAP_SINGLE,
   ATL1C_PCIMAP_FROMDEVICE);
  rfd_desc->buffer_addr = cpu_to_le64(buffer_info->dma);
  rfd_next_to_use = next_next;
  if (++next_next == rfd_ring->count)
   next_next = 0;
  buffer_info = &rfd_ring->buffer_info[rfd_next_to_use];
  next_info = &rfd_ring->buffer_info[next_next];
  num_alloc++;
 }

 if (num_alloc) {

  wmb();
  rfd_ring->next_to_use = rfd_next_to_use;
  AT_WRITE_REG(&adapter->hw, REG_MB_RFD0_PROD_IDX,
   rfd_ring->next_to_use & MB_RFDX_PROD_IDX_MASK);
 }

 return num_alloc;
}

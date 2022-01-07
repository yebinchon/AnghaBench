
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct rocker_port {struct rocker* rocker; } ;
struct rocker_desc_info {scalar_t__ tlv_size; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int EIO ;
 int EMSGSIZE ;
 int PCI_DMA_FROMDEVICE ;
 int ROCKER_TLV_RX_FRAG_ADDR ;
 int ROCKER_TLV_RX_FRAG_MAX_LEN ;
 scalar_t__ pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,int ,size_t,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,size_t,int ) ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,size_t) ;
 scalar_t__ rocker_tlv_put_u64 (struct rocker_desc_info*,int ,int ) ;

__attribute__((used)) static int rocker_dma_rx_ring_skb_map(const struct rocker_port *rocker_port,
          struct rocker_desc_info *desc_info,
          struct sk_buff *skb, size_t buf_len)
{
 const struct rocker *rocker = rocker_port->rocker;
 struct pci_dev *pdev = rocker->pdev;
 dma_addr_t dma_handle;

 dma_handle = pci_map_single(pdev, skb->data, buf_len,
        PCI_DMA_FROMDEVICE);
 if (pci_dma_mapping_error(pdev, dma_handle))
  return -EIO;
 if (rocker_tlv_put_u64(desc_info, ROCKER_TLV_RX_FRAG_ADDR, dma_handle))
  goto tlv_put_failure;
 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_RX_FRAG_MAX_LEN, buf_len))
  goto tlv_put_failure;
 return 0;

tlv_put_failure:
 pci_unmap_single(pdev, dma_handle, buf_len, PCI_DMA_FROMDEVICE);
 desc_info->tlv_size = 0;
 return -EMSGSIZE;
}

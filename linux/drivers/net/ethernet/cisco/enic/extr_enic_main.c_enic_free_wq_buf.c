
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq_buf {scalar_t__ os_buf; int len; int dma_addr; scalar_t__ sop; } ;
struct vnic_wq {int vdev; } ;
struct enic {int pdev; } ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (scalar_t__) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct enic* vnic_dev_priv (int ) ;

__attribute__((used)) static void enic_free_wq_buf(struct vnic_wq *wq, struct vnic_wq_buf *buf)
{
 struct enic *enic = vnic_dev_priv(wq->vdev);

 if (buf->sop)
  pci_unmap_single(enic->pdev, buf->dma_addr,
   buf->len, PCI_DMA_TODEVICE);
 else
  pci_unmap_page(enic->pdev, buf->dma_addr,
   buf->len, PCI_DMA_TODEVICE);

 if (buf->os_buf)
  dev_kfree_skb_any(buf->os_buf);
}

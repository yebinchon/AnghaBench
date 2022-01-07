
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rx {TYPE_2__* prev; scalar_t__ dma_addr; TYPE_3__* skb; } ;
struct rfd {int link; } ;
struct nic {int pdev; int blank_rfd; int netdev; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_7__ {int dma_addr; TYPE_1__* skb; } ;
struct TYPE_6__ {scalar_t__ data; } ;


 int ENOMEM ;
 int PCI_DMA_BIDIRECTIONAL ;
 int RFD_BUF_LEN ;
 int dev_kfree_skb_any (TYPE_3__*) ;
 TYPE_3__* netdev_alloc_skb_ip_align (int ,int ) ;
 scalar_t__ pci_dma_mapping_error (int ,scalar_t__) ;
 int pci_dma_sync_single_for_device (int ,int ,int,int ) ;
 scalar_t__ pci_map_single (int ,int ,int ,int ) ;
 int put_unaligned_le32 (scalar_t__,int *) ;
 int skb_copy_to_linear_data (TYPE_3__*,int *,int) ;

__attribute__((used)) static int e100_rx_alloc_skb(struct nic *nic, struct rx *rx)
{
 if (!(rx->skb = netdev_alloc_skb_ip_align(nic->netdev, RFD_BUF_LEN)))
  return -ENOMEM;


 skb_copy_to_linear_data(rx->skb, &nic->blank_rfd, sizeof(struct rfd));
 rx->dma_addr = pci_map_single(nic->pdev, rx->skb->data,
  RFD_BUF_LEN, PCI_DMA_BIDIRECTIONAL);

 if (pci_dma_mapping_error(nic->pdev, rx->dma_addr)) {
  dev_kfree_skb_any(rx->skb);
  rx->skb = ((void*)0);
  rx->dma_addr = 0;
  return -ENOMEM;
 }




 if (rx->prev->skb) {
  struct rfd *prev_rfd = (struct rfd *)rx->prev->skb->data;
  put_unaligned_le32(rx->dma_addr, &prev_rfd->link);
  pci_dma_sync_single_for_device(nic->pdev, rx->prev->dma_addr,
   sizeof(struct rfd), PCI_DMA_BIDIRECTIONAL);
 }

 return 0;
}

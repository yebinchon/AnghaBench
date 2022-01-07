
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct pci_dev {int dummy; } ;
struct nx_host_rds_ring {int dma_size; int skb_size; } ;
struct netxen_rx_buffer {int state; int dma; struct sk_buff* skb; } ;
struct TYPE_2__ {int cut_through; } ;
struct netxen_adapter {TYPE_1__ ahw; int netdev; struct pci_dev* pdev; } ;
typedef int dma_addr_t ;


 int NETXEN_BUFFER_BUSY ;
 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 scalar_t__ pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,int ,int ,int ) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int
netxen_alloc_rx_skb(struct netxen_adapter *adapter,
  struct nx_host_rds_ring *rds_ring,
  struct netxen_rx_buffer *buffer)
{
 struct sk_buff *skb;
 dma_addr_t dma;
 struct pci_dev *pdev = adapter->pdev;

 buffer->skb = netdev_alloc_skb(adapter->netdev, rds_ring->skb_size);
 if (!buffer->skb)
  return 1;

 skb = buffer->skb;

 if (!adapter->ahw.cut_through)
  skb_reserve(skb, 2);

 dma = pci_map_single(pdev, skb->data,
   rds_ring->dma_size, PCI_DMA_FROMDEVICE);

 if (pci_dma_mapping_error(pdev, dma)) {
  dev_kfree_skb_any(skb);
  buffer->skb = ((void*)0);
  return 1;
 }

 buffer->skb = skb;
 buffer->dma = dma;
 buffer->state = NETXEN_BUFFER_BUSY;

 return 0;
}

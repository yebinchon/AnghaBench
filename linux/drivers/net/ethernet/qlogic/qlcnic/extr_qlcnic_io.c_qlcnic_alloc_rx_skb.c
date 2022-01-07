
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct qlcnic_rx_buffer {int dma; struct sk_buff* skb; } ;
struct qlcnic_host_rds_ring {int dma_size; int skb_size; } ;
struct TYPE_2__ {int rx_dma_map_error; int skb_alloc_failure; } ;
struct qlcnic_adapter {TYPE_1__ stats; int netdev; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int NET_IP_ALIGN ;
 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 scalar_t__ pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,int ,int ,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static int qlcnic_alloc_rx_skb(struct qlcnic_adapter *adapter,
          struct qlcnic_host_rds_ring *rds_ring,
          struct qlcnic_rx_buffer *buffer)
{
 struct sk_buff *skb;
 dma_addr_t dma;
 struct pci_dev *pdev = adapter->pdev;

 skb = netdev_alloc_skb(adapter->netdev, rds_ring->skb_size);
 if (!skb) {
  adapter->stats.skb_alloc_failure++;
  return -ENOMEM;
 }

 skb_reserve(skb, NET_IP_ALIGN);
 dma = pci_map_single(pdev, skb->data,
        rds_ring->dma_size, PCI_DMA_FROMDEVICE);

 if (pci_dma_mapping_error(pdev, dma)) {
  adapter->stats.rx_dma_map_error++;
  dev_kfree_skb_any(skb);
  return -ENOMEM;
 }

 buffer->skb = skb;
 buffer->dma = dma;

 return 0;
}

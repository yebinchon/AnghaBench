
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct hinic_rxq {TYPE_1__* rq; int netdev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int buf_sz; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 struct hinic_dev* netdev_priv (int ) ;

__attribute__((used)) static void rx_unmap_skb(struct hinic_rxq *rxq, dma_addr_t dma_addr)
{
 struct hinic_dev *nic_dev = netdev_priv(rxq->netdev);
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;

 dma_unmap_single(&pdev->dev, dma_addr, rxq->rq->buf_sz,
    DMA_FROM_DEVICE);
}

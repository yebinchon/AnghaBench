
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct pci_dev {int dev; } ;
struct hinic_rxq {TYPE_1__* rq; int netdev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int buf_sz; } ;


 int DMA_FROM_DEVICE ;
 int dev_err (int *,char*,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int *,int ,int ,int ) ;
 int dma_mapping_error (int *,int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int ,int ) ;
 int netdev_err (int ,char*) ;
 struct hinic_dev* netdev_priv (int ) ;

__attribute__((used)) static struct sk_buff *rx_alloc_skb(struct hinic_rxq *rxq,
        dma_addr_t *dma_addr)
{
 struct hinic_dev *nic_dev = netdev_priv(rxq->netdev);
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 struct sk_buff *skb;
 dma_addr_t addr;
 int err;

 skb = netdev_alloc_skb_ip_align(rxq->netdev, rxq->rq->buf_sz);
 if (!skb) {
  netdev_err(rxq->netdev, "Failed to allocate Rx SKB\n");
  return ((void*)0);
 }

 addr = dma_map_single(&pdev->dev, skb->data, rxq->rq->buf_sz,
         DMA_FROM_DEVICE);
 err = dma_mapping_error(&pdev->dev, addr);
 if (err) {
  dev_err(&pdev->dev, "Failed to map Rx DMA, err = %d\n", err);
  goto err_rx_map;
 }

 *dma_addr = addr;
 return skb;

err_rx_map:
 dev_kfree_skb_any(skb);
 return ((void*)0);
}

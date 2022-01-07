
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pci_dev {int dev; } ;
struct hinic_sge {int len; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
struct TYPE_2__ {int nr_frags; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int hinic_sge_to_dma (struct hinic_sge*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void tx_unmap_skb(struct hinic_dev *nic_dev, struct sk_buff *skb,
    struct hinic_sge *sges)
{
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int i;

 for (i = 0; i < skb_shinfo(skb)->nr_frags ; i++)
  dma_unmap_page(&pdev->dev, hinic_sge_to_dma(&sges[i + 1]),
          sges[i + 1].len, DMA_TO_DEVICE);

 dma_unmap_single(&pdev->dev, hinic_sge_to_dma(&sges[0]), sges[0].len,
    DMA_TO_DEVICE);
}

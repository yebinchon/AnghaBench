
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_cmdqs {int cmdq_buf_pool; struct hinic_hwif* hwif; } ;
struct hinic_cmdq_buf {int buf; int dma_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int dma_pool_alloc (int ,int ,int *) ;

int hinic_alloc_cmdq_buf(struct hinic_cmdqs *cmdqs,
    struct hinic_cmdq_buf *cmdq_buf)
{
 struct hinic_hwif *hwif = cmdqs->hwif;
 struct pci_dev *pdev = hwif->pdev;

 cmdq_buf->buf = dma_pool_alloc(cmdqs->cmdq_buf_pool, GFP_KERNEL,
           &cmdq_buf->dma_addr);
 if (!cmdq_buf->buf) {
  dev_err(&pdev->dev, "Failed to allocate cmd from the pool\n");
  return -ENOMEM;
 }

 return 0;
}

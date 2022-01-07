
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {int chain_type; struct hinic_api_cmd_cell_ctxt* cell_ctxt; struct hinic_hwif* hwif; } ;
struct hinic_api_cmd_cell_ctxt {int api_cmd_paddr; int * api_cmd_vaddr; } ;
struct TYPE_2__ {int hw_cmd_paddr; } ;
struct hinic_api_cmd_cell {TYPE_1__ write; } ;
typedef int dma_addr_t ;


 int API_CMD_BUF_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int cpu_to_be64 (int ) ;
 int dev_err (int *,char*) ;
 int * dma_alloc_coherent (int *,int ,int *,int ) ;
 int free_cmd_buf (struct hinic_api_cmd_chain*,int) ;

__attribute__((used)) static int alloc_cmd_buf(struct hinic_api_cmd_chain *chain,
    struct hinic_api_cmd_cell *cell, int cell_idx)
{
 struct hinic_api_cmd_cell_ctxt *cell_ctxt;
 struct hinic_hwif *hwif = chain->hwif;
 struct pci_dev *pdev = hwif->pdev;
 dma_addr_t cmd_paddr;
 u8 *cmd_vaddr;
 int err = 0;

 cmd_vaddr = dma_alloc_coherent(&pdev->dev, API_CMD_BUF_SIZE,
           &cmd_paddr, GFP_KERNEL);
 if (!cmd_vaddr) {
  dev_err(&pdev->dev, "Failed to allocate API CMD DMA memory\n");
  return -ENOMEM;
 }

 cell_ctxt = &chain->cell_ctxt[cell_idx];

 cell_ctxt->api_cmd_vaddr = cmd_vaddr;
 cell_ctxt->api_cmd_paddr = cmd_paddr;


 switch (chain->chain_type) {
 case 128:

  cell->write.hw_cmd_paddr = cpu_to_be64(cmd_paddr);
  break;

 default:
  dev_err(&pdev->dev, "Unsupported API CMD chain type\n");
  free_cmd_buf(chain, cell_idx);
  err = -EINVAL;
  break;
 }

 return err;
}

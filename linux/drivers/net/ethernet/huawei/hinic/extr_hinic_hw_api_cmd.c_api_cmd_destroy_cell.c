
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {size_t cell_size; int chain_type; struct hinic_api_cmd_cell_ctxt* cell_ctxt; struct hinic_hwif* hwif; } ;
struct hinic_api_cmd_cell_ctxt {scalar_t__ api_cmd_vaddr; int cell_paddr; struct hinic_api_cmd_cell* cell_vaddr; } ;
struct hinic_api_cmd_cell {int dummy; } ;
typedef int dma_addr_t ;



 int dev_err (int *,char*) ;
 int dma_free_coherent (int *,size_t,struct hinic_api_cmd_cell*,int ) ;
 int free_cmd_buf (struct hinic_api_cmd_chain*,int) ;

__attribute__((used)) static void api_cmd_destroy_cell(struct hinic_api_cmd_chain *chain,
     int cell_idx)
{
 struct hinic_api_cmd_cell_ctxt *cell_ctxt;
 struct hinic_hwif *hwif = chain->hwif;
 struct pci_dev *pdev = hwif->pdev;
 struct hinic_api_cmd_cell *node;
 dma_addr_t node_paddr;
 size_t node_size;

 cell_ctxt = &chain->cell_ctxt[cell_idx];

 node = cell_ctxt->cell_vaddr;
 node_paddr = cell_ctxt->cell_paddr;
 node_size = chain->cell_size;

 if (cell_ctxt->api_cmd_vaddr) {
  switch (chain->chain_type) {
  case 128:
   free_cmd_buf(chain, cell_idx);
   break;
  default:
   dev_err(&pdev->dev, "Unsupported API CMD chain type\n");
   break;
  }

  dma_free_coherent(&pdev->dev, node_size, node,
      node_paddr);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {int chain_type; int cell_size; struct hinic_api_cmd_cell* head_node; void* head_cell_paddr; struct hinic_api_cmd_cell_ctxt* cell_ctxt; struct hinic_hwif* hwif; } ;
struct hinic_api_cmd_cell_ctxt {void* cell_paddr; struct hinic_api_cmd_cell* cell_vaddr; } ;
struct TYPE_2__ {scalar_t__ hw_wb_resp_paddr; } ;
struct hinic_api_cmd_cell {int next_cell_paddr; TYPE_1__ read; } ;
typedef void* dma_addr_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int alloc_cmd_buf (struct hinic_api_cmd_chain*,struct hinic_api_cmd_cell*,int) ;
 int cpu_to_be64 (void*) ;
 int dev_err (int *,char*) ;
 struct hinic_api_cmd_cell* dma_alloc_coherent (int *,int ,void**,int ) ;
 int dma_free_coherent (int *,int ,struct hinic_api_cmd_cell*,void*) ;

__attribute__((used)) static int api_cmd_create_cell(struct hinic_api_cmd_chain *chain,
          int cell_idx,
          struct hinic_api_cmd_cell *pre_node,
          struct hinic_api_cmd_cell **node_vaddr)
{
 struct hinic_api_cmd_cell_ctxt *cell_ctxt;
 struct hinic_hwif *hwif = chain->hwif;
 struct pci_dev *pdev = hwif->pdev;
 struct hinic_api_cmd_cell *node;
 dma_addr_t node_paddr;
 int err;

 node = dma_alloc_coherent(&pdev->dev, chain->cell_size, &node_paddr,
      GFP_KERNEL);
 if (!node) {
  dev_err(&pdev->dev, "Failed to allocate dma API CMD cell\n");
  return -ENOMEM;
 }

 node->read.hw_wb_resp_paddr = 0;

 cell_ctxt = &chain->cell_ctxt[cell_idx];
 cell_ctxt->cell_vaddr = node;
 cell_ctxt->cell_paddr = node_paddr;

 if (!pre_node) {
  chain->head_cell_paddr = node_paddr;
  chain->head_node = node;
 } else {

  pre_node->next_cell_paddr = cpu_to_be64(node_paddr);
 }

 switch (chain->chain_type) {
 case 128:
  err = alloc_cmd_buf(chain, node, cell_idx);
  if (err) {
   dev_err(&pdev->dev, "Failed to allocate cmd buffer\n");
   goto err_alloc_cmd_buf;
  }
  break;

 default:
  dev_err(&pdev->dev, "Unsupported API CMD chain type\n");
  err = -EINVAL;
  goto err_alloc_cmd_buf;
 }

 *node_vaddr = node;
 return 0;

err_alloc_cmd_buf:
 dma_free_coherent(&pdev->dev, chain->cell_size, node, node_paddr);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {struct hinic_api_cmd_cell_ctxt* cell_ctxt; struct hinic_hwif* hwif; } ;
struct hinic_api_cmd_cell_ctxt {int api_cmd_paddr; int api_cmd_vaddr; } ;


 int API_CMD_BUF_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void free_cmd_buf(struct hinic_api_cmd_chain *chain, int cell_idx)
{
 struct hinic_api_cmd_cell_ctxt *cell_ctxt;
 struct hinic_hwif *hwif = chain->hwif;
 struct pci_dev *pdev = hwif->pdev;

 cell_ctxt = &chain->cell_ctxt[cell_idx];

 dma_free_coherent(&pdev->dev, API_CMD_BUF_SIZE,
     cell_ctxt->api_cmd_vaddr,
     cell_ctxt->api_cmd_paddr);
}

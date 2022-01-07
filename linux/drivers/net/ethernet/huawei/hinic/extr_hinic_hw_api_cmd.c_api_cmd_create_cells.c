
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {int num_cells; int head_node; int curr_node; int head_cell_paddr; struct hinic_hwif* hwif; } ;
struct hinic_api_cmd_cell {int next_cell_paddr; } ;


 int api_cmd_create_cell (struct hinic_api_cmd_chain*,int,struct hinic_api_cmd_cell*,struct hinic_api_cmd_cell**) ;
 int api_cmd_destroy_cells (struct hinic_api_cmd_chain*,int) ;
 int cpu_to_be64 (int ) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int api_cmd_create_cells(struct hinic_api_cmd_chain *chain)
{
 struct hinic_api_cmd_cell *node = ((void*)0), *pre_node = ((void*)0);
 struct hinic_hwif *hwif = chain->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int err, cell_idx;

 for (cell_idx = 0; cell_idx < chain->num_cells; cell_idx++) {
  err = api_cmd_create_cell(chain, cell_idx, pre_node, &node);
  if (err) {
   dev_err(&pdev->dev, "Failed to create API CMD cell\n");
   goto err_create_cell;
  }

  pre_node = node;
 }


 node->next_cell_paddr = cpu_to_be64(chain->head_cell_paddr);


 chain->curr_node = chain->head_node;
 return 0;

err_create_cell:
 api_cmd_destroy_cells(chain, cell_idx);
 return err;
}

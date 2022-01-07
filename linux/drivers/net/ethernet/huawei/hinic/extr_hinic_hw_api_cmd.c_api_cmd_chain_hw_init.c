
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {struct hinic_hwif* hwif; } ;


 int api_cmd_chain_hw_clean (struct hinic_api_cmd_chain*) ;
 int api_cmd_ctrl_init (struct hinic_api_cmd_chain*) ;
 int api_cmd_head_init (struct hinic_api_cmd_chain*) ;
 int api_cmd_hw_restart (struct hinic_api_cmd_chain*) ;
 int api_cmd_set_num_cells (struct hinic_api_cmd_chain*) ;
 int api_cmd_set_status_addr (struct hinic_api_cmd_chain*) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int api_cmd_chain_hw_init(struct hinic_api_cmd_chain *chain)
{
 struct hinic_hwif *hwif = chain->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int err;

 api_cmd_chain_hw_clean(chain);

 api_cmd_set_status_addr(chain);

 err = api_cmd_hw_restart(chain);
 if (err) {
  dev_err(&pdev->dev, "Failed to restart API CMD HW\n");
  return err;
 }

 api_cmd_ctrl_init(chain);
 api_cmd_set_num_cells(chain);
 api_cmd_head_init(chain);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {int chain_type; int cons_idx; int prod_idx; struct hinic_hwif* hwif; } ;


 int EBUSY ;

 int MASKED_IDX (struct hinic_api_cmd_chain*,int ) ;
 int dev_err (int *,char*,...) ;
 int get_hw_cons_idx (struct hinic_api_cmd_chain*) ;

__attribute__((used)) static int chain_busy(struct hinic_api_cmd_chain *chain)
{
 struct hinic_hwif *hwif = chain->hwif;
 struct pci_dev *pdev = hwif->pdev;
 u32 prod_idx;

 switch (chain->chain_type) {
 case 128:
  chain->cons_idx = get_hw_cons_idx(chain);
  prod_idx = chain->prod_idx;


  if (chain->cons_idx == MASKED_IDX(chain, prod_idx + 1)) {
   dev_err(&pdev->dev, "API CMD chain %d is busy\n",
    chain->chain_type);
   return -EBUSY;
  }
  break;

 default:
  dev_err(&pdev->dev, "Unknown API CMD Chain type\n");
  break;
 }

 return 0;
}

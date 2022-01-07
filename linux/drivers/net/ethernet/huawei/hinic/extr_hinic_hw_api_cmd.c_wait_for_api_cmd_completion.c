
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {int chain_type; struct hinic_hwif* hwif; } ;


 int EINVAL ;

 int dev_err (int *,char*) ;
 int wait_for_status_poll (struct hinic_api_cmd_chain*) ;

__attribute__((used)) static int wait_for_api_cmd_completion(struct hinic_api_cmd_chain *chain)
{
 struct hinic_hwif *hwif = chain->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int err;

 switch (chain->chain_type) {
 case 128:
  err = wait_for_status_poll(chain);
  if (err) {
   dev_err(&pdev->dev, "API CMD Poll status timeout\n");
   break;
  }
  break;

 default:
  dev_err(&pdev->dev, "unknown API CMD Chain type\n");
  err = -EINVAL;
  break;
 }

 return err;
}

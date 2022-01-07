
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain_attr {int num_cells; struct hinic_hwif* hwif; } ;
struct hinic_api_cmd_chain {int num_cells; } ;


 int EINVAL ;
 int ENOMEM ;
 struct hinic_api_cmd_chain* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int api_chain_free (struct hinic_api_cmd_chain*) ;
 int api_chain_init (struct hinic_api_cmd_chain*,struct hinic_api_cmd_chain_attr*) ;
 int api_cmd_chain_hw_init (struct hinic_api_cmd_chain*) ;
 int api_cmd_create_cells (struct hinic_api_cmd_chain*) ;
 int api_cmd_destroy_cells (struct hinic_api_cmd_chain*,int ) ;
 int dev_err (int *,char*) ;
 struct hinic_api_cmd_chain* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static struct hinic_api_cmd_chain *
 api_cmd_create_chain(struct hinic_api_cmd_chain_attr *attr)
{
 struct hinic_hwif *hwif = attr->hwif;
 struct pci_dev *pdev = hwif->pdev;
 struct hinic_api_cmd_chain *chain;
 int err;

 if (attr->num_cells & (attr->num_cells - 1)) {
  dev_err(&pdev->dev, "Invalid number of cells, must be power of 2\n");
  return ERR_PTR(-EINVAL);
 }

 chain = devm_kzalloc(&pdev->dev, sizeof(*chain), GFP_KERNEL);
 if (!chain)
  return ERR_PTR(-ENOMEM);

 err = api_chain_init(chain, attr);
 if (err) {
  dev_err(&pdev->dev, "Failed to initialize chain\n");
  return ERR_PTR(err);
 }

 err = api_cmd_create_cells(chain);
 if (err) {
  dev_err(&pdev->dev, "Failed to create cells for API CMD chain\n");
  goto err_create_cells;
 }

 err = api_cmd_chain_hw_init(chain);
 if (err) {
  dev_err(&pdev->dev, "Failed to initialize chain HW\n");
  goto err_chain_hw_init;
 }

 return chain;

err_chain_hw_init:
 api_cmd_destroy_cells(chain, chain->num_cells);

err_create_cells:
 api_chain_free(chain);
 return ERR_PTR(err);
}

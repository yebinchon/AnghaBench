
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct iwl_trans {int drv; } ;


 int iwl_drv_stop (int ) ;
 int iwl_trans_pcie_free (struct iwl_trans*) ;
 struct iwl_trans* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void iwl_pci_remove(struct pci_dev *pdev)
{
 struct iwl_trans *trans = pci_get_drvdata(pdev);

 iwl_drv_stop(trans->drv);

 iwl_trans_pcie_free(trans);
}

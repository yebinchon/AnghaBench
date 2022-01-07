
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct i40e_pf {int dummy; } ;


 int i40e_reset_and_rebuild (struct i40e_pf*,int,int) ;
 struct i40e_pf* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void i40e_pci_error_reset_done(struct pci_dev *pdev)
{
 struct i40e_pf *pf = pci_get_drvdata(pdev);

 i40e_reset_and_rebuild(pf, 0, 0);
}

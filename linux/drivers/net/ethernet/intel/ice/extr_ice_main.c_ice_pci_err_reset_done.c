
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ice_pci_err_resume (struct pci_dev*) ;

__attribute__((used)) static void ice_pci_err_reset_done(struct pci_dev *pdev)
{
 ice_pci_err_resume(pdev);
}

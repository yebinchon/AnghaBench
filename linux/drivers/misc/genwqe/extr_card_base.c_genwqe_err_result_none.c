
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_NONE ;

__attribute__((used)) static pci_ers_result_t genwqe_err_result_none(struct pci_dev *dev)
{
 return PCI_ERS_RESULT_NONE;
}

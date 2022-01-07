
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_RECOVERED ;

__attribute__((used)) static pci_ers_result_t liquidio_pcie_mmio_enabled(
    struct pci_dev *pdev __attribute__((unused)))
{




 return PCI_ERS_RESULT_RECOVERED;
}

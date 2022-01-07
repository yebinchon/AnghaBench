
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int intel_spi_remove (int ) ;
 int pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void intel_spi_pci_remove(struct pci_dev *pdev)
{
 intel_spi_remove(pci_get_drvdata(pdev));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int cxl_setup_msi_irqs(struct pci_dev *pdev, int nvec, int type)
{
 return -ENODEV;
}

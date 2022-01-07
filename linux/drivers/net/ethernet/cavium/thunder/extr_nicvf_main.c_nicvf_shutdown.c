
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int nicvf_remove (struct pci_dev*) ;

__attribute__((used)) static void nicvf_shutdown(struct pci_dev *pdev)
{
 nicvf_remove(pdev);
}

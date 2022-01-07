
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cobalt {int * bar1; int * bar0; } ;


 int pci_iounmap (struct pci_dev*,int *) ;

__attribute__((used)) static void cobalt_pci_iounmap(struct cobalt *cobalt, struct pci_dev *pci_dev)
{
 if (cobalt->bar0) {
  pci_iounmap(pci_dev, cobalt->bar0);
  cobalt->bar0 = ((void*)0);
 }
 if (cobalt->bar1) {
  pci_iounmap(pci_dev, cobalt->bar1);
  cobalt->bar1 = ((void*)0);
 }
}

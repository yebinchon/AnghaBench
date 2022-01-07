
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;


 int dev_info (int *,char*) ;

__attribute__((used)) static pci_ers_result_t ngene_slot_reset(struct pci_dev *dev)
{
 dev_info(&dev->dev, "slot reset\n");
 return 0;
}

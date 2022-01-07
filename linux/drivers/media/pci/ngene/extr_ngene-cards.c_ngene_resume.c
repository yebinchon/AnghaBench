
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dev_info (int *,char*) ;

__attribute__((used)) static void ngene_resume(struct pci_dev *dev)
{
 dev_info(&dev->dev, "resume\n");
}

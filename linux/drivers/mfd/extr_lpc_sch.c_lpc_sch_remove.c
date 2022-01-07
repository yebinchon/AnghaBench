
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int mfd_remove_devices (int *) ;

__attribute__((used)) static void lpc_sch_remove(struct pci_dev *dev)
{
 mfd_remove_devices(&dev->dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pcidev; } ;
typedef TYPE_1__ MPT_ADAPTER ;


 int pci_stop_and_remove_bus_device_locked (struct pci_dev*) ;

__attribute__((used)) static int mpt_remove_dead_ioc_func(void *arg)
{
 MPT_ADAPTER *ioc = (MPT_ADAPTER *)arg;
 struct pci_dev *pdev;

 if (!ioc)
  return -1;

 pdev = ioc->pcidev;
 if (!pdev)
  return -1;

 pci_stop_and_remove_bus_device_locked(pdev);
 return 0;
}

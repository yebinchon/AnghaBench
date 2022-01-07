
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int pci_dev; scalar_t__ membase_phys; TYPE_1__* type; int * membase; int net_dev; } ;
struct TYPE_2__ {int (* mem_bar ) (struct efx_nic*) ;} ;


 int drv ;
 int iounmap (int *) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int pci_disable_device (int ) ;
 int pci_release_region (int ,int) ;
 int pci_vfs_assigned (int ) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static void efx_fini_io(struct efx_nic *efx)
{
 int bar;

 netif_dbg(efx, drv, efx->net_dev, "shutting down I/O\n");

 if (efx->membase) {
  iounmap(efx->membase);
  efx->membase = ((void*)0);
 }

 if (efx->membase_phys) {
  bar = efx->type->mem_bar(efx);
  pci_release_region(efx->pci_dev, bar);
  efx->membase_phys = 0;
 }


 if (!pci_vfs_assigned(efx->pci_dev))
  pci_disable_device(efx->pci_dev);
}

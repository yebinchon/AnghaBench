
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct efx_nic {int net_dev; TYPE_1__* type; int state; } ;
struct TYPE_2__ {int (* sriov_fini ) (struct efx_nic*) ;} ;


 int STATE_UNINIT ;
 int dev_close (int ) ;
 int drv ;
 int efx_disable_interrupts (struct efx_nic*) ;
 int efx_dissociate (struct efx_nic*) ;
 int efx_fini_io (struct efx_nic*) ;
 int efx_fini_struct (struct efx_nic*) ;
 int efx_mtd_remove (struct efx_nic*) ;
 int efx_pci_remove_main (struct efx_nic*) ;
 int efx_unregister_netdev (struct efx_nic*) ;
 int free_netdev (int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct efx_nic* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static void efx_pci_remove(struct pci_dev *pci_dev)
{
 struct efx_nic *efx;

 efx = pci_get_drvdata(pci_dev);
 if (!efx)
  return;


 rtnl_lock();
 efx_dissociate(efx);
 dev_close(efx->net_dev);
 efx_disable_interrupts(efx);
 efx->state = STATE_UNINIT;
 rtnl_unlock();

 if (efx->type->sriov_fini)
  efx->type->sriov_fini(efx);

 efx_unregister_netdev(efx);

 efx_mtd_remove(efx);

 efx_pci_remove_main(efx);

 efx_fini_io(efx);
 netif_dbg(efx, drv, efx->net_dev, "shutdown successful\n");

 efx_fini_struct(efx);
 free_netdev(efx->net_dev);

 pci_disable_pcie_error_reporting(pci_dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ef4_nic {int net_dev; int state; } ;


 int STATE_UNINIT ;
 int dev_close (int ) ;
 int drv ;
 int ef4_disable_interrupts (struct ef4_nic*) ;
 int ef4_dissociate (struct ef4_nic*) ;
 int ef4_fini_io (struct ef4_nic*) ;
 int ef4_fini_struct (struct ef4_nic*) ;
 int ef4_mtd_remove (struct ef4_nic*) ;
 int ef4_pci_remove_main (struct ef4_nic*) ;
 int ef4_unregister_netdev (struct ef4_nic*) ;
 int free_netdev (int ) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct ef4_nic* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void ef4_pci_remove(struct pci_dev *pci_dev)
{
 struct ef4_nic *efx;

 efx = pci_get_drvdata(pci_dev);
 if (!efx)
  return;


 rtnl_lock();
 ef4_dissociate(efx);
 dev_close(efx->net_dev);
 ef4_disable_interrupts(efx);
 efx->state = STATE_UNINIT;
 rtnl_unlock();

 ef4_unregister_netdev(efx);

 ef4_mtd_remove(efx);

 ef4_pci_remove_main(efx);

 ef4_fini_io(efx);
 netif_dbg(efx, drv, efx->net_dev, "shutdown successful\n");

 ef4_fini_struct(efx);
 free_netdev(efx->net_dev);

 pci_disable_pcie_error_reporting(pci_dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct efx_nic {scalar_t__ state; int net_dev; } ;


 int RESET_TYPE_ALL ;
 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_READY ;
 int efx_reset (struct efx_nic*,int ) ;
 int hw ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int) ;
 struct efx_nic* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void efx_io_resume(struct pci_dev *pdev)
{
 struct efx_nic *efx = pci_get_drvdata(pdev);
 int rc;

 rtnl_lock();

 if (efx->state == STATE_DISABLED)
  goto out;

 rc = efx_reset(efx, RESET_TYPE_ALL);
 if (rc) {
  netif_err(efx, hw, efx->net_dev,
     "efx_reset failed after PCI error (%d)\n", rc);
 } else {
  efx->state = STATE_READY;
  netif_dbg(efx, hw, efx->net_dev,
     "Done resetting and resuming IO after PCI error.\n");
 }

out:
 rtnl_unlock();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ef4_nic {scalar_t__ state; int net_dev; } ;


 int RESET_TYPE_ALL ;
 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_READY ;
 int ef4_reset (struct ef4_nic*,int ) ;
 int hw ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*) ;
 int netif_err (struct ef4_nic*,int ,int ,char*,int) ;
 struct ef4_nic* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void ef4_io_resume(struct pci_dev *pdev)
{
 struct ef4_nic *efx = pci_get_drvdata(pdev);
 int rc;

 rtnl_lock();

 if (efx->state == STATE_DISABLED)
  goto out;

 rc = ef4_reset(efx, RESET_TYPE_ALL);
 if (rc) {
  netif_err(efx, hw, efx->net_dev,
     "ef4_reset failed after PCI error (%d)\n", rc);
 } else {
  efx->state = STATE_READY;
  netif_dbg(efx, hw, efx->net_dev,
     "Done resetting and resuming IO after PCI error.\n");
 }

out:
 rtnl_unlock();
}

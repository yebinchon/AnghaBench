
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct efx_nic {unsigned int vf_count; int net_dev; TYPE_3__* pci_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {TYPE_1__* vf; } ;
struct TYPE_9__ {TYPE_2__* driver; } ;
struct TYPE_8__ {int (* remove ) (TYPE_3__*) ;} ;
struct TYPE_7__ {struct efx_nic* efx; } ;


 int drv ;
 int efx_ef10_pci_sriov_disable (struct efx_nic*,int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,...) ;
 int pci_disable_sriov (TYPE_3__*) ;
 scalar_t__ pci_num_vf (TYPE_3__*) ;
 int pci_vfs_assigned (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

void efx_ef10_sriov_fini(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 unsigned int i;
 int rc;

 if (!nic_data->vf) {

  if (pci_num_vf(efx->pci_dev) && !pci_vfs_assigned(efx->pci_dev))
   pci_disable_sriov(efx->pci_dev);
  return;
 }


 for (i = 0; i < efx->vf_count; ++i) {
  struct efx_nic *vf_efx = nic_data->vf[i].efx;

  if (vf_efx)
   vf_efx->pci_dev->driver->remove(vf_efx->pci_dev);
 }

 rc = efx_ef10_pci_sriov_disable(efx, 1);
 if (rc)
  netif_dbg(efx, drv, efx->net_dev,
     "Disabling SRIOV was not successful rc=%d\n", rc);
 else
  netif_dbg(efx, drv, efx->net_dev, "SRIOV disabled\n");
}

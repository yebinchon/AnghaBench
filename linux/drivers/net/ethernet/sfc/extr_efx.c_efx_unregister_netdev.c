
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int net_dev; TYPE_1__* pci_dev; int name; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int dev_attr_mcdi_logging ;
 int dev_attr_phy_type ;
 int device_remove_file (int *,int *) ;
 scalar_t__ efx_dev_registered (struct efx_nic*) ;
 struct efx_nic* netdev_priv (int ) ;
 int pci_name (TYPE_1__*) ;
 int strlcpy (int ,int ,int) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void efx_unregister_netdev(struct efx_nic *efx)
{
 if (!efx->net_dev)
  return;

 BUG_ON(netdev_priv(efx->net_dev) != efx);

 if (efx_dev_registered(efx)) {
  strlcpy(efx->name, pci_name(efx->pci_dev), sizeof(efx->name));



  device_remove_file(&efx->pci_dev->dev, &dev_attr_phy_type);
  unregister_netdev(efx->net_dev);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; } ;
struct net_device {int features; int vlan_features; int hw_features; } ;
struct ef4_nic_type {int offload_features; } ;
struct ef4_nic {int fixed_features; int net_dev; struct ef4_nic_type const* type; } ;


 int EF4_MAX_CORE_TX_QUEUES ;
 int EF4_MAX_RX_QUEUES ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int WARN_ON (int) ;
 struct net_device* alloc_etherdev_mqs (int,int ,int ) ;
 int drv ;
 int ef4_fini_io (struct ef4_nic*) ;
 int ef4_fini_struct (struct ef4_nic*) ;
 int ef4_init_io (struct ef4_nic*) ;
 int ef4_init_struct (struct ef4_nic*,struct pci_dev*,struct net_device*) ;
 int ef4_mtd_probe (struct ef4_nic*) ;
 int ef4_pci_probe_main (struct ef4_nic*) ;
 int ef4_pci_remove_main (struct ef4_nic*) ;
 int ef4_probe_vpd_strings (struct ef4_nic*) ;
 int ef4_register_netdev (struct ef4_nic*) ;
 int free_netdev (struct net_device*) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,...) ;
 int netif_info (struct ef4_nic*,int ,int ,char*) ;
 int netif_notice (struct ef4_nic*,int ,int ,char*,int) ;
 int netif_warn (struct ef4_nic*,int ,int ,char*,int) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct ef4_nic*) ;
 int probe ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int ef4_pci_probe(struct pci_dev *pci_dev,
    const struct pci_device_id *entry)
{
 struct net_device *net_dev;
 struct ef4_nic *efx;
 int rc;


 net_dev = alloc_etherdev_mqs(sizeof(*efx), EF4_MAX_CORE_TX_QUEUES,
         EF4_MAX_RX_QUEUES);
 if (!net_dev)
  return -ENOMEM;
 efx = netdev_priv(net_dev);
 efx->type = (const struct ef4_nic_type *) entry->driver_data;
 efx->fixed_features |= NETIF_F_HIGHDMA;

 pci_set_drvdata(pci_dev, efx);
 SET_NETDEV_DEV(net_dev, &pci_dev->dev);
 rc = ef4_init_struct(efx, pci_dev, net_dev);
 if (rc)
  goto fail1;

 netif_info(efx, probe, efx->net_dev,
     "Solarflare NIC detected\n");

 ef4_probe_vpd_strings(efx);


 rc = ef4_init_io(efx);
 if (rc)
  goto fail2;

 rc = ef4_pci_probe_main(efx);
 if (rc)
  goto fail3;

 net_dev->features |= (efx->type->offload_features | NETIF_F_SG |
         NETIF_F_RXCSUM);

 net_dev->vlan_features |= (NETIF_F_HW_CSUM | NETIF_F_SG |
       NETIF_F_HIGHDMA | NETIF_F_RXCSUM);

 net_dev->hw_features = net_dev->features & ~efx->fixed_features;





 net_dev->features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;
 net_dev->features |= efx->fixed_features;

 rc = ef4_register_netdev(efx);
 if (rc)
  goto fail4;

 netif_dbg(efx, probe, efx->net_dev, "initialisation successful\n");


 rtnl_lock();
 rc = ef4_mtd_probe(efx);
 rtnl_unlock();
 if (rc && rc != -EPERM)
  netif_warn(efx, probe, efx->net_dev,
      "failed to create MTDs (%d)\n", rc);

 rc = pci_enable_pcie_error_reporting(pci_dev);
 if (rc && rc != -EINVAL)
  netif_notice(efx, probe, efx->net_dev,
        "PCIE error reporting unavailable (%d).\n",
        rc);

 return 0;

 fail4:
 ef4_pci_remove_main(efx);
 fail3:
 ef4_fini_io(efx);
 fail2:
 ef4_fini_struct(efx);
 fail1:
 WARN_ON(rc > 0);
 netif_dbg(efx, drv, efx->net_dev, "initialisation failed. rc=%d\n", rc);
 free_netdev(net_dev);
 return rc;
}

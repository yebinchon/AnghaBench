
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct efx_nic_type {int (* udp_tnl_push_ports ) (struct efx_nic*) ;int is_vf; } ;
struct efx_nic {int net_dev; struct efx_nic_type const* type; scalar_t__ reset_pending; int fixed_features; } ;


 int EFX_MAX_CORE_TX_QUEUES ;
 int EFX_MAX_RX_QUEUES ;
 int ENOMEM ;
 int EPERM ;
 int NETIF_F_HIGHDMA ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int WARN_ON (int) ;
 struct net_device* alloc_etherdev_mqs (int,int ,int ) ;
 int drv ;
 int efx_fini_io (struct efx_nic*) ;
 int efx_fini_struct (struct efx_nic*) ;
 int efx_init_io (struct efx_nic*) ;
 int efx_init_struct (struct efx_nic*,struct pci_dev*,struct net_device*) ;
 int efx_mtd_probe (struct efx_nic*) ;
 int efx_pci_probe_post_io (struct efx_nic*) ;
 int efx_probe_vpd_strings (struct efx_nic*) ;
 int free_netdev (struct net_device*) ;
 int get_random_bytes (unsigned char*,int) ;
 int msleep (unsigned int) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,...) ;
 int netif_info (struct efx_nic*,int ,int ,char*) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,int) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct efx_nic*) ;
 int probe ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static int efx_pci_probe(struct pci_dev *pci_dev,
    const struct pci_device_id *entry)
{
 struct net_device *net_dev;
 struct efx_nic *efx;
 int rc;


 net_dev = alloc_etherdev_mqs(sizeof(*efx), EFX_MAX_CORE_TX_QUEUES,
         EFX_MAX_RX_QUEUES);
 if (!net_dev)
  return -ENOMEM;
 efx = netdev_priv(net_dev);
 efx->type = (const struct efx_nic_type *) entry->driver_data;
 efx->fixed_features |= NETIF_F_HIGHDMA;

 pci_set_drvdata(pci_dev, efx);
 SET_NETDEV_DEV(net_dev, &pci_dev->dev);
 rc = efx_init_struct(efx, pci_dev, net_dev);
 if (rc)
  goto fail1;

 netif_info(efx, probe, efx->net_dev,
     "Solarflare NIC detected\n");

 if (!efx->type->is_vf)
  efx_probe_vpd_strings(efx);


 rc = efx_init_io(efx);
 if (rc)
  goto fail2;

 rc = efx_pci_probe_post_io(efx);
 if (rc) {



  efx->reset_pending = 0;
  rc = efx_pci_probe_post_io(efx);
  if (rc) {



   unsigned char r;

   get_random_bytes(&r, 1);
   msleep((unsigned int)r + 50);
   efx->reset_pending = 0;
   rc = efx_pci_probe_post_io(efx);
  }
 }
 if (rc)
  goto fail3;

 netif_dbg(efx, probe, efx->net_dev, "initialisation successful\n");


 rtnl_lock();
 rc = efx_mtd_probe(efx);
 rtnl_unlock();
 if (rc && rc != -EPERM)
  netif_warn(efx, probe, efx->net_dev,
      "failed to create MTDs (%d)\n", rc);

 (void)pci_enable_pcie_error_reporting(pci_dev);

 if (efx->type->udp_tnl_push_ports)
  efx->type->udp_tnl_push_ports(efx);

 return 0;

 fail3:
 efx_fini_io(efx);
 fail2:
 efx_fini_struct(efx);
 fail1:
 WARN_ON(rc > 0);
 netif_dbg(efx, drv, efx->net_dev, "initialisation failed. rc=%d\n", rc);
 free_netdev(net_dev);
 return rc;
}

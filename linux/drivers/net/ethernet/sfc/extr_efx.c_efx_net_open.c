
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct efx_nic {int phy_mode; scalar_t__ state; int net_dev; scalar_t__ reset_pending; } ;


 int EBUSY ;
 int EIO ;
 int PHY_MODE_SPECIAL ;
 int RESET_TYPE_ALL ;
 scalar_t__ STATE_DISABLED ;
 int efx_check_disabled (struct efx_nic*) ;
 int efx_link_status_changed (struct efx_nic*) ;
 scalar_t__ efx_mcdi_poll_reboot (struct efx_nic*) ;
 scalar_t__ efx_reset (struct efx_nic*,int ) ;
 int efx_selftest_async_start (struct efx_nic*) ;
 int efx_start_all (struct efx_nic*) ;
 int ifup ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ) ;
 int netif_device_detach (int ) ;
 int raw_smp_processor_id () ;

int efx_net_open(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 int rc;

 netif_dbg(efx, ifup, efx->net_dev, "opening device on CPU %d\n",
    raw_smp_processor_id());

 rc = efx_check_disabled(efx);
 if (rc)
  return rc;
 if (efx->phy_mode & PHY_MODE_SPECIAL)
  return -EBUSY;
 if (efx_mcdi_poll_reboot(efx) && efx_reset(efx, RESET_TYPE_ALL))
  return -EIO;



 efx_link_status_changed(efx);

 efx_start_all(efx);
 if (efx->state == STATE_DISABLED || efx->reset_pending)
  netif_device_detach(efx->net_dev);
 efx_selftest_async_start(efx);
 return 0;
}

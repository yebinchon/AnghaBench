
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ef4_nic {int phy_mode; int net_dev; } ;


 int EBUSY ;
 int PHY_MODE_SPECIAL ;
 int ef4_check_disabled (struct ef4_nic*) ;
 int ef4_link_status_changed (struct ef4_nic*) ;
 int ef4_selftest_async_start (struct ef4_nic*) ;
 int ef4_start_all (struct ef4_nic*) ;
 int ifup ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ) ;
 int raw_smp_processor_id () ;

int ef4_net_open(struct net_device *net_dev)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 int rc;

 netif_dbg(efx, ifup, efx->net_dev, "opening device on CPU %d\n",
    raw_smp_processor_id());

 rc = ef4_check_disabled(efx);
 if (rc)
  return rc;
 if (efx->phy_mode & PHY_MODE_SPECIAL)
  return -EBUSY;



 ef4_link_status_changed(efx);

 ef4_start_all(efx);
 ef4_selftest_async_start(efx);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ef4_nic {int net_dev; } ;


 int ef4_stop_all (struct ef4_nic*) ;
 int ifdown ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ) ;
 int raw_smp_processor_id () ;

int ef4_net_stop(struct net_device *net_dev)
{
 struct ef4_nic *efx = netdev_priv(net_dev);

 netif_dbg(efx, ifdown, efx->net_dev, "closing on CPU %d\n",
    raw_smp_processor_id());


 ef4_stop_all(efx);

 return 0;
}

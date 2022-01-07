
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct efx_nic {int mac_work; int workqueue; scalar_t__ port_enabled; } ;


 struct efx_nic* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void efx_set_rx_mode(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 if (efx->port_enabled)
  queue_work(efx->workqueue, &efx->mac_work);

}

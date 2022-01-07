
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_phys_item_id {int dummy; } ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* get_phys_port_id ) (struct efx_nic*,struct netdev_phys_item_id*) ;} ;


 int EOPNOTSUPP ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,struct netdev_phys_item_id*) ;

__attribute__((used)) static int efx_get_phys_port_id(struct net_device *net_dev,
    struct netdev_phys_item_id *ppid)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 if (efx->type->get_phys_port_id)
  return efx->type->get_phys_port_id(efx, ppid);
 else
  return -EOPNOTSUPP;
}

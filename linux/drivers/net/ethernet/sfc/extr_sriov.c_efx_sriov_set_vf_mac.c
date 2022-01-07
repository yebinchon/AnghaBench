
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* sriov_set_vf_mac ) (struct efx_nic*,int,int *) ;} ;


 int EOPNOTSUPP ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,int,int *) ;

int efx_sriov_set_vf_mac(struct net_device *net_dev, int vf_i, u8 *mac)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 if (efx->type->sriov_set_vf_mac)
  return efx->type->sriov_set_vf_mac(efx, vf_i, mac);
 else
  return -EOPNOTSUPP;
}

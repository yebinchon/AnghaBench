
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifla_vf_info {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* sriov_get_vf_config ) (struct efx_nic*,int,struct ifla_vf_info*) ;} ;


 int EOPNOTSUPP ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,int,struct ifla_vf_info*) ;

int efx_sriov_get_vf_config(struct net_device *net_dev, int vf_i,
       struct ifla_vf_info *ivi)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 if (efx->type->sriov_get_vf_config)
  return efx->type->sriov_get_vf_config(efx, vf_i, ivi);
 else
  return -EOPNOTSUPP;
}

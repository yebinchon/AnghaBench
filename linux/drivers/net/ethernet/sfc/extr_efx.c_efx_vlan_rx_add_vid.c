
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
typedef int __be16 ;
struct TYPE_2__ {int (* vlan_rx_add_vid ) (struct efx_nic*,int ,int ) ;} ;


 int EOPNOTSUPP ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,int ,int ) ;

__attribute__((used)) static int efx_vlan_rx_add_vid(struct net_device *net_dev, __be16 proto, u16 vid)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 if (efx->type->vlan_rx_add_vid)
  return efx->type->vlan_rx_add_vid(efx, proto, vid);
 else
  return -EOPNOTSUPP;
}

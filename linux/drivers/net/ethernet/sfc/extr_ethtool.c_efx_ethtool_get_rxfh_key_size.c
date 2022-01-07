
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int rx_hash_key_size; } ;


 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 efx_ethtool_get_rxfh_key_size(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 return efx->type->rx_hash_key_size;
}

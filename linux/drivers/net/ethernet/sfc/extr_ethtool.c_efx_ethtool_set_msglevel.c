
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {int msg_enable; } ;


 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void efx_ethtool_set_msglevel(struct net_device *net_dev, u32 msg_enable)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 efx->msg_enable = msg_enable;
}

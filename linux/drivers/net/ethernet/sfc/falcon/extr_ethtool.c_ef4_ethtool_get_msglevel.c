
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ef4_nic {int msg_enable; } ;


 struct ef4_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ef4_ethtool_get_msglevel(struct net_device *net_dev)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 return efx->msg_enable;
}

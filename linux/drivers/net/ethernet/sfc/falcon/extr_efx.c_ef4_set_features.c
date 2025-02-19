
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; } ;
struct ef4_nic {TYPE_1__* type; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int (* filter_clear_rx ) (struct ef4_nic*,int ) ;} ;


 int EF4_FILTER_PRI_MANUAL ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_NTUPLE ;
 int ef4_set_rx_mode (struct net_device*) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct ef4_nic*,int ) ;

__attribute__((used)) static int ef4_set_features(struct net_device *net_dev, netdev_features_t data)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 int rc;


 if (net_dev->features & ~data & NETIF_F_NTUPLE) {
  rc = efx->type->filter_clear_rx(efx, EF4_FILTER_PRI_MANUAL);
  if (rc)
   return rc;
 }


 if ((net_dev->features ^ data) & NETIF_F_HW_VLAN_CTAG_FILTER) {



  ef4_set_rx_mode(net_dev);
 }

 return 0;
}

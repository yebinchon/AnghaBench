
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; } ;
struct efx_nic {TYPE_1__* type; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int (* filter_clear_rx ) (struct efx_nic*,int ) ;} ;


 int EFX_FILTER_PRI_MANUAL ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_NTUPLE ;
 int NETIF_F_RXFCS ;
 int efx_set_rx_mode (struct net_device*) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,int ) ;

__attribute__((used)) static int efx_set_features(struct net_device *net_dev, netdev_features_t data)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 int rc;


 if (net_dev->features & ~data & NETIF_F_NTUPLE) {
  rc = efx->type->filter_clear_rx(efx, EFX_FILTER_PRI_MANUAL);
  if (rc)
   return rc;
 }




 if ((net_dev->features ^ data) & (NETIF_F_HW_VLAN_CTAG_FILTER |
       NETIF_F_RXFCS)) {



  efx_set_rx_mode(net_dev);
 }

 return 0;
}

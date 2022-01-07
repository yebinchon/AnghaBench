
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct efx_nic {scalar_t__* link_advertising; int wanted_fc; int mac_lock; int net_dev; TYPE_2__* phy_op; TYPE_1__* type; } ;
struct TYPE_4__ {int (* reconfigure ) (struct efx_nic*) ;} ;
struct TYPE_3__ {int (* prepare_enable_fc_tx ) (struct efx_nic*) ;} ;


 int EFX_FC_AUTO ;
 int EFX_FC_RX ;
 int EFX_FC_TX ;
 int EINVAL ;
 int drv ;
 int efx_link_set_wanted_fc (struct efx_nic*,int) ;
 int efx_mac_reconfigure (struct efx_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;

__attribute__((used)) static int efx_ethtool_set_pauseparam(struct net_device *net_dev,
          struct ethtool_pauseparam *pause)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 u8 wanted_fc, old_fc;
 u32 old_adv;
 int rc = 0;

 mutex_lock(&efx->mac_lock);

 wanted_fc = ((pause->rx_pause ? EFX_FC_RX : 0) |
       (pause->tx_pause ? EFX_FC_TX : 0) |
       (pause->autoneg ? EFX_FC_AUTO : 0));

 if ((wanted_fc & EFX_FC_TX) && !(wanted_fc & EFX_FC_RX)) {
  netif_dbg(efx, drv, efx->net_dev,
     "Flow control unsupported: tx ON rx OFF\n");
  rc = -EINVAL;
  goto out;
 }

 if ((wanted_fc & EFX_FC_AUTO) && !efx->link_advertising[0]) {
  netif_dbg(efx, drv, efx->net_dev,
     "Autonegotiation is disabled\n");
  rc = -EINVAL;
  goto out;
 }


 if (efx->type->prepare_enable_fc_tx &&
     (wanted_fc & EFX_FC_TX) && !(efx->wanted_fc & EFX_FC_TX))
  efx->type->prepare_enable_fc_tx(efx);

 old_adv = efx->link_advertising[0];
 old_fc = efx->wanted_fc;
 efx_link_set_wanted_fc(efx, wanted_fc);
 if (efx->link_advertising[0] != old_adv ||
     (efx->wanted_fc ^ old_fc) & EFX_FC_AUTO) {
  rc = efx->phy_op->reconfigure(efx);
  if (rc) {
   netif_err(efx, drv, efx->net_dev,
      "Unable to advertise requested flow "
      "control setting\n");
   goto out;
  }
 }




 efx_mac_reconfigure(efx);

out:
 mutex_unlock(&efx->mac_lock);

 return rc;
}

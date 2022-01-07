
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct fec_enet_private {int napi; int pause_flag; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;


 int EINVAL ;
 int ENODEV ;
 int FEC_PAUSE_FLAG_AUTONEG ;
 int FEC_PAUSE_FLAG_ENABLE ;
 int fec_restart (struct net_device*) ;
 int fec_stop (struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netdev_info (struct net_device*,char*) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 int phy_set_sym_pause (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int phy_start_aneg (int ) ;

__attribute__((used)) static int fec_enet_set_pauseparam(struct net_device *ndev,
       struct ethtool_pauseparam *pause)
{
 struct fec_enet_private *fep = netdev_priv(ndev);

 if (!ndev->phydev)
  return -ENODEV;

 if (pause->tx_pause != pause->rx_pause) {
  netdev_info(ndev,
   "hardware only support enable/disable both tx and rx");
  return -EINVAL;
 }

 fep->pause_flag = 0;


 fep->pause_flag |= pause->rx_pause ? FEC_PAUSE_FLAG_ENABLE : 0;
 fep->pause_flag |= pause->autoneg ? FEC_PAUSE_FLAG_AUTONEG : 0;

 phy_set_sym_pause(ndev->phydev, pause->rx_pause, pause->tx_pause,
     pause->autoneg);

 if (pause->autoneg) {
  if (netif_running(ndev))
   fec_stop(ndev);
  phy_start_aneg(ndev->phydev);
 }
 if (netif_running(ndev)) {
  napi_disable(&fep->napi);
  netif_tx_lock_bh(ndev);
  fec_restart(ndev);
  netif_tx_wake_all_queues(ndev);
  netif_tx_unlock_bh(ndev);
  napi_enable(&fep->napi);
 }

 return 0;
}

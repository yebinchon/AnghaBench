
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ phydev; } ;
struct enetc_ndev_priv {int bdr_int_num; TYPE_1__** int_vector; } ;
struct TYPE_2__ {int napi; } ;


 int enetc_clear_bdrs (struct enetc_ndev_priv*) ;
 int enetc_disable_interrupts (struct enetc_ndev_priv*) ;
 int enetc_free_irqs (struct enetc_ndev_priv*) ;
 int enetc_free_rx_resources (struct enetc_ndev_priv*) ;
 int enetc_free_rxtx_rings (struct enetc_ndev_priv*) ;
 int enetc_free_tx_resources (struct enetc_ndev_priv*) ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 int phy_stop (scalar_t__) ;

int enetc_close(struct net_device *ndev)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 int i;

 netif_tx_stop_all_queues(ndev);

 if (ndev->phydev) {
  phy_stop(ndev->phydev);
  phy_disconnect(ndev->phydev);
 } else {
  netif_carrier_off(ndev);
 }

 for (i = 0; i < priv->bdr_int_num; i++) {
  napi_synchronize(&priv->int_vector[i]->napi);
  napi_disable(&priv->int_vector[i]->napi);
 }

 enetc_disable_interrupts(priv);
 enetc_clear_bdrs(priv);

 enetc_free_rxtx_rings(priv);
 enetc_free_rx_resources(priv);
 enetc_free_tx_resources(priv);
 enetc_free_irqs(priv);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct arc_emac_priv {int napi; } ;


 int EN_MASK ;
 int ERR_MASK ;
 int RXINT_MASK ;
 int R_CTRL ;
 int R_ENABLE ;
 int TXINT_MASK ;
 int arc_free_rx_queue (struct net_device*) ;
 int arc_free_tx_queue (struct net_device*) ;
 int arc_reg_clr (struct arc_emac_priv*,int ,int) ;
 int napi_disable (int *) ;
 struct arc_emac_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (int ) ;

__attribute__((used)) static int arc_emac_stop(struct net_device *ndev)
{
 struct arc_emac_priv *priv = netdev_priv(ndev);

 napi_disable(&priv->napi);
 netif_stop_queue(ndev);

 phy_stop(ndev->phydev);


 arc_reg_clr(priv, R_ENABLE, RXINT_MASK | TXINT_MASK | ERR_MASK);


 arc_reg_clr(priv, R_CTRL, EN_MASK);


 arc_free_tx_queue(ndev);
 arc_free_rx_queue(ndev);

 return 0;
}

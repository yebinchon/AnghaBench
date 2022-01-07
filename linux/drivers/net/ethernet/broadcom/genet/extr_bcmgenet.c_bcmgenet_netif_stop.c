
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct bcmgenet_priv {int old_link; int old_speed; int old_duplex; int old_pause; int bcmgenet_irq_work; } ;


 int CMD_RX_EN ;
 int CMD_TX_EN ;
 int bcmgenet_disable_rx_napi (struct bcmgenet_priv*) ;
 int bcmgenet_disable_tx_napi (struct bcmgenet_priv*) ;
 int bcmgenet_dma_teardown (struct bcmgenet_priv*) ;
 int bcmgenet_fini_dma (struct bcmgenet_priv*) ;
 int bcmgenet_intr_disable (struct bcmgenet_priv*) ;
 int bcmgenet_tx_reclaim_all (struct net_device*) ;
 int cancel_work_sync (int *) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int phy_stop (int ) ;
 int umac_enable_set (struct bcmgenet_priv*,int ,int) ;

__attribute__((used)) static void bcmgenet_netif_stop(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);

 bcmgenet_disable_tx_napi(priv);
 netif_tx_disable(dev);


 umac_enable_set(priv, CMD_RX_EN, 0);

 bcmgenet_dma_teardown(priv);


 umac_enable_set(priv, CMD_TX_EN, 0);

 phy_stop(dev->phydev);
 bcmgenet_disable_rx_napi(priv);
 bcmgenet_intr_disable(priv);




 cancel_work_sync(&priv->bcmgenet_irq_work);

 priv->old_link = -1;
 priv->old_speed = -1;
 priv->old_duplex = -1;
 priv->old_pause = -1;


 bcmgenet_tx_reclaim_all(dev);
 bcmgenet_fini_dma(priv);
}

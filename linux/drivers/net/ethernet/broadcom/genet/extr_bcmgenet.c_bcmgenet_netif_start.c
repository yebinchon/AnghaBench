
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct bcmgenet_priv {int dummy; } ;


 int CMD_RX_EN ;
 int CMD_TX_EN ;
 int bcmgenet_enable_rx_napi (struct bcmgenet_priv*) ;
 int bcmgenet_enable_tx_napi (struct bcmgenet_priv*) ;
 int bcmgenet_link_intr_enable (struct bcmgenet_priv*) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int phy_start (int ) ;
 int umac_enable_set (struct bcmgenet_priv*,int,int) ;

__attribute__((used)) static void bcmgenet_netif_start(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);


 bcmgenet_enable_rx_napi(priv);

 umac_enable_set(priv, CMD_TX_EN | CMD_RX_EN, 1);

 bcmgenet_enable_tx_napi(priv);


 bcmgenet_link_intr_enable(priv);

 phy_start(dev->phydev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ eee; } ;
struct stmmac_priv {int eee_active; int hw; int eee_enabled; TYPE_1__ dma_cap; int ioaddr; } ;
struct phylink_config {int dev; } ;
struct phy_device {int dummy; } ;
typedef int phy_interface_t ;


 struct stmmac_priv* netdev_priv (int ) ;
 scalar_t__ phy_init_eee (struct phy_device*,int) ;
 int stmmac_eee_init (struct stmmac_priv*) ;
 int stmmac_mac_set (struct stmmac_priv*,int ,int) ;
 int stmmac_set_eee_pls (struct stmmac_priv*,int ,int) ;
 int to_net_dev (int ) ;

__attribute__((used)) static void stmmac_mac_link_up(struct phylink_config *config,
          unsigned int mode, phy_interface_t interface,
          struct phy_device *phy)
{
 struct stmmac_priv *priv = netdev_priv(to_net_dev(config->dev));

 stmmac_mac_set(priv, priv->ioaddr, 1);
 if (phy && priv->dma_cap.eee) {
  priv->eee_active = phy_init_eee(phy, 1) >= 0;
  priv->eee_enabled = stmmac_eee_init(priv);
  stmmac_set_eee_pls(priv, priv->hw, 1);
 }
}

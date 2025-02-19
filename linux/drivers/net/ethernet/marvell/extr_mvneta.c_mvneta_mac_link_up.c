
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_config {int dev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct mvneta_port {int eee_active; scalar_t__ tx_lpi_enabled; scalar_t__ eee_enabled; } ;
typedef int phy_interface_t ;


 int MVNETA_GMAC_AUTONEG_CONFIG ;
 int MVNETA_GMAC_FORCE_LINK_DOWN ;
 int MVNETA_GMAC_FORCE_LINK_PASS ;
 int mvneta_port_up (struct mvneta_port*) ;
 int mvneta_set_eee (struct mvneta_port*,int) ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 scalar_t__ phy_init_eee (struct phy_device*,int ) ;
 int phylink_autoneg_inband (unsigned int) ;
 struct net_device* to_net_dev (int ) ;

__attribute__((used)) static void mvneta_mac_link_up(struct phylink_config *config, unsigned int mode,
          phy_interface_t interface,
          struct phy_device *phy)
{
 struct net_device *ndev = to_net_dev(config->dev);
 struct mvneta_port *pp = netdev_priv(ndev);
 u32 val;

 if (!phylink_autoneg_inband(mode)) {
  val = mvreg_read(pp, MVNETA_GMAC_AUTONEG_CONFIG);
  val &= ~MVNETA_GMAC_FORCE_LINK_DOWN;
  val |= MVNETA_GMAC_FORCE_LINK_PASS;
  mvreg_write(pp, MVNETA_GMAC_AUTONEG_CONFIG, val);
 }

 mvneta_port_up(pp);

 if (phy && pp->eee_enabled) {
  pp->eee_active = phy_init_eee(phy, 0) >= 0;
  mvneta_set_eee(pp, pp->eee_active && pp->tx_lpi_enabled);
 }
}

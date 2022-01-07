
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_config {int dev; } ;
struct net_device {int dummy; } ;
struct mvneta_port {int eee_active; } ;
typedef int phy_interface_t ;


 int MVNETA_GMAC_AUTONEG_CONFIG ;
 int MVNETA_GMAC_FORCE_LINK_DOWN ;
 int MVNETA_GMAC_FORCE_LINK_PASS ;
 int mvneta_port_down (struct mvneta_port*) ;
 int mvneta_set_eee (struct mvneta_port*,int) ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 int phylink_autoneg_inband (unsigned int) ;
 struct net_device* to_net_dev (int ) ;

__attribute__((used)) static void mvneta_mac_link_down(struct phylink_config *config,
     unsigned int mode, phy_interface_t interface)
{
 struct net_device *ndev = to_net_dev(config->dev);
 struct mvneta_port *pp = netdev_priv(ndev);
 u32 val;

 mvneta_port_down(pp);

 if (!phylink_autoneg_inband(mode)) {
  val = mvreg_read(pp, MVNETA_GMAC_AUTONEG_CONFIG);
  val &= ~MVNETA_GMAC_FORCE_LINK_PASS;
  val |= MVNETA_GMAC_FORCE_LINK_DOWN;
  mvreg_write(pp, MVNETA_GMAC_AUTONEG_CONFIG, val);
 }

 pp->eee_active = 0;
 mvneta_set_eee(pp, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_config {int dev; } ;
struct net_device {int dummy; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_GMAC_AUTONEG_CONFIG ;
 int MVNETA_GMAC_INBAND_RESTART_AN ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 struct net_device* to_net_dev (int ) ;

__attribute__((used)) static void mvneta_mac_an_restart(struct phylink_config *config)
{
 struct net_device *ndev = to_net_dev(config->dev);
 struct mvneta_port *pp = netdev_priv(ndev);
 u32 gmac_an = mvreg_read(pp, MVNETA_GMAC_AUTONEG_CONFIG);

 mvreg_write(pp, MVNETA_GMAC_AUTONEG_CONFIG,
      gmac_an | MVNETA_GMAC_INBAND_RESTART_AN);
 mvreg_write(pp, MVNETA_GMAC_AUTONEG_CONFIG,
      gmac_an & ~MVNETA_GMAC_INBAND_RESTART_AN);
}

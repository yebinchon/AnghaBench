
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mvneta_port {int phylink; int tx_lpi_enabled; int eee_active; int eee_enabled; } ;
struct ethtool_eee {int tx_lpi_timer; int tx_lpi_enabled; int eee_active; int eee_enabled; } ;


 int MVNETA_LPI_CTRL_0 ;
 int mvreg_read (struct mvneta_port*,int ) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 int phylink_ethtool_get_eee (int ,struct ethtool_eee*) ;

__attribute__((used)) static int mvneta_ethtool_get_eee(struct net_device *dev,
      struct ethtool_eee *eee)
{
 struct mvneta_port *pp = netdev_priv(dev);
 u32 lpi_ctl0;

 lpi_ctl0 = mvreg_read(pp, MVNETA_LPI_CTRL_0);

 eee->eee_enabled = pp->eee_enabled;
 eee->eee_active = pp->eee_active;
 eee->tx_lpi_enabled = pp->tx_lpi_enabled;
 eee->tx_lpi_timer = (lpi_ctl0) >> 8;

 return phylink_ethtool_get_eee(pp->phylink, eee);
}

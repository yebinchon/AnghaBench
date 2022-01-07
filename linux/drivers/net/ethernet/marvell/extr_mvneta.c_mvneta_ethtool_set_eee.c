
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mvneta_port {int phylink; scalar_t__ tx_lpi_enabled; scalar_t__ eee_enabled; } ;
struct ethtool_eee {int tx_lpi_timer; scalar_t__ eee_enabled; scalar_t__ tx_lpi_enabled; } ;


 int EINVAL ;
 int MVNETA_LPI_CTRL_0 ;
 int mvneta_set_eee (struct mvneta_port*,int) ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 int phylink_ethtool_set_eee (int ,struct ethtool_eee*) ;

__attribute__((used)) static int mvneta_ethtool_set_eee(struct net_device *dev,
      struct ethtool_eee *eee)
{
 struct mvneta_port *pp = netdev_priv(dev);
 u32 lpi_ctl0;



 if (eee->tx_lpi_enabled && eee->tx_lpi_timer > 255)
  return -EINVAL;

 lpi_ctl0 = mvreg_read(pp, MVNETA_LPI_CTRL_0);
 lpi_ctl0 &= ~(0xff << 8);
 lpi_ctl0 |= eee->tx_lpi_timer << 8;
 mvreg_write(pp, MVNETA_LPI_CTRL_0, lpi_ctl0);

 pp->eee_enabled = eee->eee_enabled;
 pp->tx_lpi_enabled = eee->tx_lpi_enabled;

 mvneta_set_eee(pp, eee->tx_lpi_enabled && eee->eee_enabled);

 return phylink_ethtool_set_eee(pp->phylink, eee);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_link_state {scalar_t__ interface; int an_complete; int link; int duplex; int pause; int speed; } ;
struct phylink_config {int dev; } ;
struct net_device {int dummy; } ;
struct mvneta_port {int dummy; } ;


 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;
 int MVNETA_GMAC_AN_COMPLETE ;
 int MVNETA_GMAC_FULL_DUPLEX ;
 int MVNETA_GMAC_LINK_UP ;
 int MVNETA_GMAC_RX_FLOW_CTRL_ENABLE ;
 int MVNETA_GMAC_SPEED_100 ;
 int MVNETA_GMAC_SPEED_1000 ;
 int MVNETA_GMAC_STATUS ;
 int MVNETA_GMAC_TX_FLOW_CTRL_ENABLE ;
 scalar_t__ PHY_INTERFACE_MODE_2500BASEX ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_2500 ;
 int mvreg_read (struct mvneta_port*,int ) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 struct net_device* to_net_dev (int ) ;

__attribute__((used)) static int mvneta_mac_link_state(struct phylink_config *config,
     struct phylink_link_state *state)
{
 struct net_device *ndev = to_net_dev(config->dev);
 struct mvneta_port *pp = netdev_priv(ndev);
 u32 gmac_stat;

 gmac_stat = mvreg_read(pp, MVNETA_GMAC_STATUS);

 if (gmac_stat & MVNETA_GMAC_SPEED_1000)
  state->speed =
   state->interface == PHY_INTERFACE_MODE_2500BASEX ?
   SPEED_2500 : SPEED_1000;
 else if (gmac_stat & MVNETA_GMAC_SPEED_100)
  state->speed = SPEED_100;
 else
  state->speed = SPEED_10;

 state->an_complete = !!(gmac_stat & MVNETA_GMAC_AN_COMPLETE);
 state->link = !!(gmac_stat & MVNETA_GMAC_LINK_UP);
 state->duplex = !!(gmac_stat & MVNETA_GMAC_FULL_DUPLEX);

 state->pause = 0;
 if (gmac_stat & MVNETA_GMAC_RX_FLOW_CTRL_ENABLE)
  state->pause |= MLO_PAUSE_RX;
 if (gmac_stat & MVNETA_GMAC_TX_FLOW_CTRL_ENABLE)
  state->pause |= MLO_PAUSE_TX;

 return 1;
}

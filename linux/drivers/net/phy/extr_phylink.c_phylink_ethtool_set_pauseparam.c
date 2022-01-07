
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink_link_state {int pause; } ;
struct phylink {int link_an_mode; int netdev; int phylink_disable_state; int supported; struct phylink_link_state link_config; } ;
struct ethtool_pauseparam {scalar_t__ rx_pause; scalar_t__ tx_pause; scalar_t__ autoneg; } ;


 int ASSERT_RTNL () ;
 int Asym_Pause ;
 int EINVAL ;
 int EOPNOTSUPP ;



 int MLO_PAUSE_AN ;
 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;
 int MLO_PAUSE_TXRX_MASK ;
 int PHYLINK_DISABLE_STOPPED ;
 int Pause ;
 int netif_carrier_off (int ) ;
 int phylink_mac_an_restart (struct phylink*) ;
 int phylink_mac_config (struct phylink*,struct phylink_link_state*) ;
 int phylink_resolve_flow (struct phylink*,struct phylink_link_state*) ;
 int phylink_run_resolve (struct phylink*) ;
 int phylink_test (int ,int ) ;
 int test_bit (int ,int *) ;

int phylink_ethtool_set_pauseparam(struct phylink *pl,
       struct ethtool_pauseparam *pause)
{
 struct phylink_link_state *config = &pl->link_config;

 ASSERT_RTNL();

 if (!phylink_test(pl->supported, Pause) &&
     !phylink_test(pl->supported, Asym_Pause))
  return -EOPNOTSUPP;

 if (!phylink_test(pl->supported, Asym_Pause) &&
     !pause->autoneg && pause->rx_pause != pause->tx_pause)
  return -EINVAL;

 config->pause &= ~(MLO_PAUSE_AN | MLO_PAUSE_TXRX_MASK);

 if (pause->autoneg)
  config->pause |= MLO_PAUSE_AN;
 if (pause->rx_pause)
  config->pause |= MLO_PAUSE_RX;
 if (pause->tx_pause)
  config->pause |= MLO_PAUSE_TX;

 if (!test_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state)) {
  switch (pl->link_an_mode) {
  case 128:

   if (pl->netdev)
    netif_carrier_off(pl->netdev);
   phylink_run_resolve(pl);
   break;

  case 130:

   phylink_resolve_flow(pl, config);
   phylink_mac_config(pl, config);
   break;

  case 129:
   phylink_mac_config(pl, config);
   phylink_mac_an_restart(pl);
   break;
  }
 }

 return 0;
}

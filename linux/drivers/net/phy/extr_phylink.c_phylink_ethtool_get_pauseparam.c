
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pause; } ;
struct phylink {TYPE_1__ link_config; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;


 int ASSERT_RTNL () ;
 int MLO_PAUSE_AN ;
 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;

void phylink_ethtool_get_pauseparam(struct phylink *pl,
        struct ethtool_pauseparam *pause)
{
 ASSERT_RTNL();

 pause->autoneg = !!(pl->link_config.pause & MLO_PAUSE_AN);
 pause->rx_pause = !!(pl->link_config.pause & MLO_PAUSE_RX);
 pause->tx_pause = !!(pl->link_config.pause & MLO_PAUSE_TX);
}

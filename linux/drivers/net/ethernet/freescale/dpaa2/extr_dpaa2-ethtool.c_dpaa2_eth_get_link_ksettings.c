
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int speed; int duplex; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct TYPE_4__ {int options; int rate; } ;
struct dpaa2_eth_priv {TYPE_2__ link_state; } ;


 int AUTONEG_DISABLE ;
 int DPNI_LINK_OPT_HALF_DUPLEX ;
 int DUPLEX_FULL ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
dpaa2_eth_get_link_ksettings(struct net_device *net_dev,
        struct ethtool_link_ksettings *link_settings)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);

 link_settings->base.autoneg = AUTONEG_DISABLE;
 if (!(priv->link_state.options & DPNI_LINK_OPT_HALF_DUPLEX))
  link_settings->base.duplex = DUPLEX_FULL;
 link_settings->base.speed = priv->link_state.rate;

 return 0;
}

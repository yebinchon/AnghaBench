
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_pauseparam {int tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;
struct dpni_link_cfg {int options; int rate; int member_0; } ;
struct TYPE_2__ {int options; int rate; } ;
struct dpaa2_eth_priv {TYPE_1__ link_state; int mc_token; int mc_io; } ;


 int DPNI_LINK_OPT_ASYM_PAUSE ;
 int DPNI_LINK_OPT_PAUSE ;
 int DPNI_PAUSE_VER_MAJOR ;
 int DPNI_PAUSE_VER_MINOR ;
 int EOPNOTSUPP ;
 int dpaa2_eth_has_pause_support (struct dpaa2_eth_priv*) ;
 int dpni_set_link_cfg (int ,int ,int ,struct dpni_link_cfg*) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*,int ,int ) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dpaa2_eth_set_pauseparam(struct net_device *net_dev,
        struct ethtool_pauseparam *pause)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 struct dpni_link_cfg cfg = {0};
 int err;

 if (!dpaa2_eth_has_pause_support(priv)) {
  netdev_info(net_dev, "No pause frame support for DPNI version < %d.%d\n",
       DPNI_PAUSE_VER_MAJOR, DPNI_PAUSE_VER_MINOR);
  return -EOPNOTSUPP;
 }

 if (pause->autoneg)
  return -EOPNOTSUPP;

 cfg.rate = priv->link_state.rate;
 cfg.options = priv->link_state.options;
 if (pause->rx_pause)
  cfg.options |= DPNI_LINK_OPT_PAUSE;
 else
  cfg.options &= ~DPNI_LINK_OPT_PAUSE;
 if (!!pause->rx_pause ^ !!pause->tx_pause)
  cfg.options |= DPNI_LINK_OPT_ASYM_PAUSE;
 else
  cfg.options &= ~DPNI_LINK_OPT_ASYM_PAUSE;

 if (cfg.options == priv->link_state.options)
  return 0;

 err = dpni_set_link_cfg(priv->mc_io, 0, priv->mc_token, &cfg);
 if (err) {
  netdev_err(net_dev, "dpni_set_link_state failed\n");
  return err;
 }

 priv->link_state.options = cfg.options;

 return 0;
}

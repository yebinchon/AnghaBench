
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct cpsw_priv {int rx_pause; int tx_pause; } ;


 int _cpsw_adjust_link ;
 int for_each_slave (struct cpsw_priv*,int ,struct cpsw_priv*,int*) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cpsw_set_pauseparam(struct net_device *ndev,
          struct ethtool_pauseparam *pause)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 bool link;

 priv->rx_pause = pause->rx_pause ? 1 : 0;
 priv->tx_pause = pause->tx_pause ? 1 : 0;

 for_each_slave(priv, _cpsw_adjust_link, priv, &link);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gve_priv {int tx_desc_cnt; int rx_desc_cnt; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 struct gve_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gve_get_ringparam(struct net_device *netdev,
         struct ethtool_ringparam *cmd)
{
 struct gve_priv *priv = netdev_priv(netdev);

 cmd->rx_max_pending = priv->rx_desc_cnt;
 cmd->tx_max_pending = priv->tx_desc_cnt;
 cmd->rx_pending = priv->rx_desc_cnt;
 cmd->tx_pending = priv->tx_desc_cnt;
}

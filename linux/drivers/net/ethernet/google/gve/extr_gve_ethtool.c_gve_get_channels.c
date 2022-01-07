
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int num_queues; int max_queues; } ;
struct TYPE_4__ {int num_queues; int max_queues; } ;
struct gve_priv {TYPE_1__ tx_cfg; TYPE_2__ rx_cfg; } ;
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ other_count; int tx_count; int rx_count; scalar_t__ max_combined; scalar_t__ max_other; int max_tx; int max_rx; } ;


 struct gve_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gve_get_channels(struct net_device *netdev,
        struct ethtool_channels *cmd)
{
 struct gve_priv *priv = netdev_priv(netdev);

 cmd->max_rx = priv->rx_cfg.max_queues;
 cmd->max_tx = priv->tx_cfg.max_queues;
 cmd->max_other = 0;
 cmd->max_combined = 0;
 cmd->rx_count = priv->rx_cfg.num_queues;
 cmd->tx_count = priv->tx_cfg.num_queues;
 cmd->other_count = 0;
 cmd->combined_count = 0;
}

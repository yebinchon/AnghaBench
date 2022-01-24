#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int dummy; } ;
struct gve_queue_config {int num_queues; } ;
struct gve_priv {struct gve_queue_config rx_cfg; struct gve_queue_config tx_cfg; } ;
struct ethtool_channels {int tx_count; int rx_count; scalar_t__ combined_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct gve_priv*,struct gve_queue_config,struct gve_queue_config) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct ethtool_channels*) ; 
 struct gve_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
			    struct ethtool_channels *cmd)
{
	struct gve_priv *priv = FUNC2(netdev);
	struct gve_queue_config new_tx_cfg = priv->tx_cfg;
	struct gve_queue_config new_rx_cfg = priv->rx_cfg;
	struct ethtool_channels old_settings;
	int new_tx = cmd->tx_count;
	int new_rx = cmd->rx_count;

	FUNC1(netdev, &old_settings);

	/* Changing combined is not allowed allowed */
	if (cmd->combined_count != old_settings.combined_count)
		return -EINVAL;

	if (!new_rx || !new_tx)
		return -EINVAL;

	if (!FUNC3(netdev)) {
		priv->tx_cfg.num_queues = new_tx;
		priv->rx_cfg.num_queues = new_rx;
		return 0;
	}

	new_tx_cfg.num_queues = new_tx;
	new_rx_cfg.num_queues = new_rx;

	return FUNC0(priv, new_rx_cfg, new_tx_cfg);
}
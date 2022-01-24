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
struct ksz_port {scalar_t__ force_link; int /*<<< orphan*/  flow_ctrl; } ;
struct ksz_hw {scalar_t__ ksz_switch; int /*<<< orphan*/  overrides; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; scalar_t__ autoneg; } ;
struct dev_priv {struct ksz_port port; struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  lock; struct ksz_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS8842_SWITCH_CTRL_1_OFFSET ; 
 int /*<<< orphan*/  PAUSE_FLOW_CTRL ; 
 int /*<<< orphan*/  PHY_FLOW_CTRL ; 
 int /*<<< orphan*/  PHY_NO_FLOW_CTRL ; 
 int /*<<< orphan*/  SWITCH_RX_FLOW_CTRL ; 
 int /*<<< orphan*/  SWITCH_TX_FLOW_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
	struct ethtool_pauseparam *pause)
{
	struct dev_priv *priv = FUNC2(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_hw *hw = &hw_priv->hw;
	struct ksz_port *port = &priv->port;

	FUNC0(&hw_priv->lock);
	if (pause->autoneg) {
		if (!pause->rx_pause && !pause->tx_pause)
			port->flow_ctrl = PHY_NO_FLOW_CTRL;
		else
			port->flow_ctrl = PHY_FLOW_CTRL;
		hw->overrides &= ~PAUSE_FLOW_CTRL;
		port->force_link = 0;
		if (hw->ksz_switch) {
			FUNC5(hw, KS8842_SWITCH_CTRL_1_OFFSET,
				SWITCH_RX_FLOW_CTRL, 1);
			FUNC5(hw, KS8842_SWITCH_CTRL_1_OFFSET,
				SWITCH_TX_FLOW_CTRL, 1);
		}
		FUNC3(port);
	} else {
		hw->overrides |= PAUSE_FLOW_CTRL;
		if (hw->ksz_switch) {
			FUNC5(hw, KS8842_SWITCH_CTRL_1_OFFSET,
				SWITCH_RX_FLOW_CTRL, pause->rx_pause);
			FUNC5(hw, KS8842_SWITCH_CTRL_1_OFFSET,
				SWITCH_TX_FLOW_CTRL, pause->tx_pause);
		} else
			FUNC4(hw, pause->rx_pause, pause->tx_pause);
	}
	FUNC1(&hw_priv->lock);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev_addr; } ;
struct ksz_port {int first_port; } ;
struct ksz_hw {int dev_count; int features; int /*<<< orphan*/  tx_desc_info; int /*<<< orphan*/  rx_desc_info; int /*<<< orphan*/  promiscuous; int /*<<< orphan*/  all_multi; TYPE_1__* ksz_switch; } ;
struct dev_priv {scalar_t__ promiscuous; scalar_t__ multicast; int /*<<< orphan*/  monitor_timer_info; struct ksz_port port; struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_tasklet; int /*<<< orphan*/  rx_tasklet; int /*<<< orphan*/  mib_read; int /*<<< orphan*/  mib_timer_info; int /*<<< orphan*/  opened; int /*<<< orphan*/  wol_enable; struct ksz_hw hw; } ;
struct TYPE_2__ {int member; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  STP_STATE_DISABLED ; 
 int STP_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct dev_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct ksz_port*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ksz_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct dev_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct net_device *dev)
{
	struct dev_priv *priv = FUNC10(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_port *port = &priv->port;
	struct ksz_hw *hw = &hw_priv->hw;
	int pi;

	FUNC11(dev);

	FUNC8(&priv->monitor_timer_info);

	/* Need to shut the port manually in multiple device interfaces mode. */
	if (hw->dev_count > 1) {
		FUNC13(hw, port->first_port, STP_STATE_DISABLED);

		/* Port is closed.  Need to change bridge setting. */
		if (hw->features & STP_SUPPORT) {
			pi = 1 << port->first_port;
			if (hw->ksz_switch->member & pi) {
				hw->ksz_switch->member &= ~pi;
				FUNC0(hw);
			}
		}
	}
	if (port->first_port > 0)
		FUNC4(hw, dev->dev_addr);
	if (!hw_priv->wol_enable)
		FUNC12(port, true);

	if (priv->multicast)
		--hw->all_multi;
	if (priv->promiscuous)
		--hw->promiscuous;

	hw_priv->opened--;
	if (!(hw_priv->opened)) {
		FUNC8(&hw_priv->mib_timer_info);
		FUNC1(&hw_priv->mib_read);

		FUNC5(hw);
		FUNC6(hw);
		FUNC3(hw);

		/* Delay for receive task to stop scheduling itself. */
		FUNC9(2000 / HZ);

		FUNC15(&hw_priv->rx_tasklet);
		FUNC15(&hw_priv->tx_tasklet);
		FUNC2(dev->irq, hw_priv->dev);

		FUNC16(hw_priv, 0);
		FUNC7(&hw->rx_desc_info);
		FUNC7(&hw->tx_desc_info);

		/* Clean out static MAC table when the switch is shutdown. */
		if (hw->features & STP_SUPPORT)
			FUNC14(hw);
	}

	return 0;
}
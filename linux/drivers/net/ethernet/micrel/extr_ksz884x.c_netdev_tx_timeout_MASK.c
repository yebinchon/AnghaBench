#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {scalar_t__ watchdog_timeo; } ;
struct TYPE_4__ {int /*<<< orphan*/  ring_phys; } ;
struct ksz_hw {int dev_count; TYPE_1__* port_info; scalar_t__ multi_list_size; scalar_t__ all_multi; TYPE_2__ rx_desc_info; TYPE_2__ tx_desc_info; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {struct ksz_hw hw; } ;
struct TYPE_3__ {struct net_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STP_STATE_DISABLED ; 
 int /*<<< orphan*/  STP_STATE_SIMPLE ; 
 int SWITCH_PORT_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ksz_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ksz_hw*,scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC11 (struct dev_info*) ; 
 struct dev_priv* FUNC12 (struct net_device*) ; 
 scalar_t__ FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct ksz_hw*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct dev_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct net_device *dev)
{
	static unsigned long last_reset;

	struct dev_priv *priv = FUNC12(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_hw *hw = &hw_priv->hw;
	int port;

	if (hw->dev_count > 1) {
		/*
		 * Only reset the hardware if time between calls is long
		 * enough.
		 */
		if (FUNC17(jiffies, last_reset + dev->watchdog_timeo))
			hw_priv = NULL;
	}

	last_reset = jiffies;
	if (hw_priv) {
		FUNC0(hw);
		FUNC1(hw);

		FUNC18(hw_priv, 0);
		FUNC5(&hw->rx_desc_info);
		FUNC5(&hw->tx_desc_info);
		FUNC11(hw_priv);

		FUNC4(hw);

		FUNC8(hw,
			hw->tx_desc_info.ring_phys,
			hw->rx_desc_info.ring_phys);
		FUNC7(hw);
		if (hw->all_multi)
			FUNC10(hw, hw->all_multi);
		else if (hw->multi_list_size)
			FUNC9(hw);

		if (hw->dev_count > 1) {
			FUNC6(hw);
			for (port = 0; port < SWITCH_PORT_NUM; port++) {
				struct net_device *port_dev;

				FUNC16(hw, port,
					STP_STATE_DISABLED);

				port_dev = hw->port_info[port].pdev;
				if (FUNC13(port_dev))
					FUNC16(hw, port,
						STP_STATE_SIMPLE);
			}
		}

		FUNC3(hw);
		FUNC2(hw);
	}

	FUNC14(dev);
	FUNC15(dev);
}
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
struct skge_port {int dummy; } ;
struct skge_hw {int ports; scalar_t__ phy_type; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  intr_mask; int /*<<< orphan*/  phy_lock; struct net_device** dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  IS_EXT_REG ; 
 scalar_t__ SK_PHY_BCOM ; 
 int /*<<< orphan*/  FUNC0 (struct skge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw*) ; 
 struct skge_port* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct skge_port*) ; 

__attribute__((used)) static void FUNC11(unsigned long arg)
{
	struct skge_hw *hw = (struct skge_hw *) arg;
	int port;

	for (port = 0; port < hw->ports; port++) {
		struct net_device *dev = hw->dev[port];

		if (FUNC3(dev)) {
			struct skge_port *skge = FUNC2(dev);

			FUNC6(&hw->phy_lock);
			if (!FUNC1(hw))
				FUNC10(skge);
			else if (hw->phy_type == SK_PHY_BCOM)
				FUNC0(skge);
			FUNC8(&hw->phy_lock);
		}
	}

	FUNC7(&hw->hw_lock);
	hw->intr_mask |= IS_EXT_REG;
	FUNC5(hw, B0_IMSK, hw->intr_mask);
	FUNC4(hw, B0_IMSK);
	FUNC9(&hw->hw_lock);
}
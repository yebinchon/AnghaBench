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
struct skge_port {int port; int /*<<< orphan*/  netdev; struct skge_hw* hw; } ;
struct skge_hw {int /*<<< orphan*/  phy_lock; struct net_device** dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw*,int) ; 
 scalar_t__ FUNC2 (struct skge_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct skge_hw*,int) ; 

__attribute__((used)) static void FUNC10(struct skge_port *skge)
{
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	struct net_device *dev = hw->dev[port];

	FUNC4(skge->netdev);
	FUNC3(skge->netdev);

	FUNC6(&hw->phy_lock);
	if (FUNC2(hw)) {
		FUNC1(hw, port);
		FUNC0(hw, port);
	} else {
		FUNC9(hw, port);
		FUNC8(hw, port);
	}
	FUNC7(&hw->phy_lock);

	FUNC5(dev);
}
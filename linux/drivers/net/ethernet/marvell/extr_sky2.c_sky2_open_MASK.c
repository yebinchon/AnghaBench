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
typedef  int /*<<< orphan*/  u32 ;
struct sky2_port {unsigned int port; struct sky2_hw* hw; } ;
struct sky2_hw {int ports; scalar_t__ chip_id; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 scalar_t__ CHIP_ID_YUKON_OPT ; 
 scalar_t__ CHIP_ID_YUKON_OP_2 ; 
 scalar_t__ CHIP_ID_YUKON_PRM ; 
 int /*<<< orphan*/  Y2_IS_PHY_QLNK ; 
 int /*<<< orphan*/  ifup ; 
 struct sky2_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_port*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/ * portirq_msk ; 
 int FUNC3 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct sky2_port *sky2 = FUNC0(dev);
	struct sky2_hw *hw = sky2->hw;
	unsigned port = sky2->port;
	u32 imask;
	int err;

	FUNC1(dev);

	err = FUNC3(sky2);
	if (err)
		goto err_out;

	/* With single port, IRQ is setup when device is brought up */
	if (hw->ports == 1 && (err = FUNC7(hw, dev->name)))
		goto err_out;

	FUNC5(sky2);

	/* Enable interrupts from phy/mac for port */
	imask = FUNC6(hw, B0_IMSK);

	if (hw->chip_id == CHIP_ID_YUKON_OPT ||
	    hw->chip_id == CHIP_ID_YUKON_PRM ||
	    hw->chip_id == CHIP_ID_YUKON_OP_2)
		imask |= Y2_IS_PHY_QLNK;	/* enable PHY Quick Link */

	imask |= portirq_msk[port];
	FUNC8(hw, B0_IMSK, imask);
	FUNC6(hw, B0_IMSK);

	FUNC2(sky2, ifup, dev, "enabling interface\n");

	return 0;

err_out:
	FUNC4(sky2);
	return err;
}
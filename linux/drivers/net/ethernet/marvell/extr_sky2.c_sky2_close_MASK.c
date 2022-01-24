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
typedef  int /*<<< orphan*/  u32 ;
struct sky2_port {size_t port; int /*<<< orphan*/  tx_le; struct sky2_hw* hw; } ;
struct sky2_hw {int ports; int /*<<< orphan*/  napi; TYPE_1__* pdev; int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  SKY2_HW_IRQ_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sky2_hw*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sky2_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_port*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/ * portirq_msk ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct sky2_port *sky2 = FUNC3(dev);
	struct sky2_hw *hw = sky2->hw;

	/* Never really got started! */
	if (!sky2->tx_le)
		return 0;

	FUNC4(sky2, ifdown, dev, "disabling interface\n");

	if (hw->ports == 1) {
		FUNC8(hw, B0_IMSK, 0);
		FUNC7(hw, B0_IMSK);

		FUNC1(&hw->napi);
		FUNC0(hw->pdev->irq, hw);
		hw->flags &= ~SKY2_HW_IRQ_SETUP;
	} else {
		u32 imask;

		/* Disable port IRQ */
		imask  = FUNC7(hw, B0_IMSK);
		imask &= ~portirq_msk[sky2->port];
		FUNC8(hw, B0_IMSK, imask);
		FUNC7(hw, B0_IMSK);

		FUNC9(hw->pdev->irq);
		FUNC2(&hw->napi);
	}

	FUNC6(sky2);

	FUNC5(sky2);

	return 0;
}
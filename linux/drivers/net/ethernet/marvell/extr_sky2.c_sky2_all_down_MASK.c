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
struct sky2_port {int dummy; } ;
struct sky2_hw {int flags; int ports; struct net_device** dev; int /*<<< orphan*/  napi; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 int SKY2_HW_IRQ_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sky2_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sky2_hw *hw)
{
	int i;

	if (hw->flags & SKY2_HW_IRQ_SETUP) {
		FUNC7(hw, B0_IMSK, 0);
		FUNC6(hw, B0_IMSK);

		FUNC8(hw->pdev->irq);
		FUNC0(&hw->napi);
	}

	for (i = 0; i < hw->ports; i++) {
		struct net_device *dev = hw->dev[i];
		struct sky2_port *sky2 = FUNC1(dev);

		if (!FUNC3(dev))
			continue;

		FUNC2(dev);
		FUNC4(dev);
		FUNC5(sky2);
	}
}
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
struct sky2_port {int dummy; } ;
struct sky2_hw {int ports; int flags; int /*<<< orphan*/  napi; struct net_device** dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  B0_Y2_SP_LISR ; 
 int SKY2_HW_IRQ_SETUP ; 
 int /*<<< orphan*/  Y2_IS_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sky2_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/ * portirq_msk ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sky2_hw *hw)
{
	u32 imask = Y2_IS_BASE;
	int i;

	for (i = 0; i < hw->ports; i++) {
		struct net_device *dev = hw->dev[i];
		struct sky2_port *sky2 = FUNC1(dev);

		if (!FUNC2(dev))
			continue;

		FUNC4(sky2);
		FUNC6(dev);
		imask |= portirq_msk[i];
		FUNC3(dev);
	}

	if (hw->flags & SKY2_HW_IRQ_SETUP) {
		FUNC7(hw, B0_IMSK, imask);
		FUNC5(hw, B0_IMSK);
		FUNC5(hw, B0_Y2_SP_LISR);
		FUNC0(&hw->napi);
	}
}
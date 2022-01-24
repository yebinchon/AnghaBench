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
struct platform_device {int dummy; } ;
struct orion_mdio_dev {scalar_t__ err_interrupt; int /*<<< orphan*/ * clk; scalar_t__ regs; } ;
struct mii_bus {struct orion_mdio_dev* priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MVMDIO_ERR_INT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_bus*) ; 
 struct mii_bus* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mii_bus *bus = FUNC5(pdev);
	struct orion_mdio_dev *dev = bus->priv;
	int i;

	if (dev->err_interrupt > 0)
		FUNC6(0, dev->regs + MVMDIO_ERR_INT_MASK);
	FUNC4(bus);

	for (i = 0; i < FUNC0(dev->clk); i++) {
		if (FUNC1(dev->clk[i]))
			break;
		FUNC2(dev->clk[i]);
		FUNC3(dev->clk[i]);
	}

	return 0;
}
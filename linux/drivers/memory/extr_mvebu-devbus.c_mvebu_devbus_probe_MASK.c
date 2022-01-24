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
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct devbus_write_params {int dummy; } ;
struct devbus_read_params {int dummy; } ;
struct devbus {int tick_ps; struct device* dev; struct clk* base; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct devbus*,struct device_node*,struct devbus_read_params*,struct devbus_write_params*) ; 
 int FUNC6 (struct devbus*,struct device_node*,struct devbus_read_params*,struct devbus_write_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct devbus*,struct device_node*,struct devbus_read_params*,struct devbus_write_params*) ; 
 struct clk* FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC9 (struct device*,struct resource*) ; 
 struct devbus* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct device_node*,char*) ; 
 int FUNC12 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*,char*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = pdev->dev.of_node;
	struct devbus_read_params r;
	struct devbus_write_params w;
	struct devbus *devbus;
	struct resource *res;
	struct clk *clk;
	unsigned long rate;
	int err;

	devbus = FUNC10(&pdev->dev, sizeof(struct devbus), GFP_KERNEL);
	if (!devbus)
		return -ENOMEM;

	devbus->dev = dev;
	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	devbus->base = FUNC9(&pdev->dev, res);
	if (FUNC0(devbus->base))
		return FUNC1(devbus->base);

	clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(clk))
		return FUNC1(clk);
	FUNC3(clk);

	/*
	 * Obtain clock period in picoseconds,
	 * we need this in order to convert timing
	 * parameters from cycles to picoseconds.
	 */
	rate = FUNC2(clk) / 1000;
	devbus->tick_ps = 1000000000 / rate;

	FUNC4(devbus->dev, "Setting timing parameter, tick is %lu ps\n",
		devbus->tick_ps);

	if (!FUNC13(node, "devbus,keep-config")) {
		/* Read the Device Tree node */
		err = FUNC6(devbus, node, &r, &w);
		if (err < 0)
			return err;

		/* Set the new timing parameters */
		if (FUNC11(node, "marvell,orion-devbus"))
			FUNC7(devbus, node, &r, &w);
		else
			FUNC5(devbus, node, &r, &w);
	}

	/*
	 * We need to create a child device explicitly from here to
	 * guarantee that the child will be probed after the timing
	 * parameters for the bus are written.
	 */
	err = FUNC12(node, NULL, NULL, dev);
	if (err < 0)
		return err;

	return 0;
}
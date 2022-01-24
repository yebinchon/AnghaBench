#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct mii_bus {int dummy; } ;
struct mdio_gpio_info {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct mdio_gpio_info* FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct mii_bus* FUNC3 (TYPE_1__*,struct mdio_gpio_info*,int) ; 
 int FUNC4 (TYPE_1__*,struct mdio_gpio_info*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct mii_bus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mdio_gpio_info *bitbang;
	struct mii_bus *new_bus;
	int ret, bus_id;

	bitbang = FUNC1(&pdev->dev, sizeof(*bitbang), GFP_KERNEL);
	if (!bitbang)
		return -ENOMEM;

	ret = FUNC4(&pdev->dev, bitbang);
	if (ret)
		return ret;

	if (pdev->dev.of_node) {
		bus_id = FUNC5(pdev->dev.of_node, "mdio-gpio");
		if (bus_id < 0) {
			FUNC0(&pdev->dev, "failed to get alias id\n");
			bus_id = 0;
		}
	} else {
		bus_id = pdev->id;
	}

	new_bus = FUNC3(&pdev->dev, bitbang, bus_id);
	if (!new_bus)
		return -ENODEV;

	ret = FUNC6(new_bus, pdev->dev.of_node);
	if (ret)
		FUNC2(&pdev->dev);

	return ret;
}
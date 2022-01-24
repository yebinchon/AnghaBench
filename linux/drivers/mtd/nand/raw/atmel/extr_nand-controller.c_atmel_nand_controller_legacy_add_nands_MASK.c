#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct atmel_nand_controller {struct device* dev; } ;
struct atmel_nand {int numcs; int /*<<< orphan*/  base; struct gpio_desc* cdgpio; TYPE_3__* cs; } ;
struct TYPE_5__ {struct gpio_desc* gpio; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma; struct gpio_desc* virt; } ;
struct TYPE_6__ {int id; struct gpio_desc* csgpio; TYPE_2__ rb; TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_NAND_GPIO_RB ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct atmel_nand_controller*,struct atmel_nand*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct gpio_desc* FUNC4 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC5 (struct device*,struct resource*) ; 
 struct atmel_nand* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC9 (struct device*) ; 

__attribute__((used)) static int
FUNC10(struct atmel_nand_controller *nc)
{
	struct device *dev = nc->dev;
	struct platform_device *pdev = FUNC9(dev);
	struct atmel_nand *nand;
	struct gpio_desc *gpio;
	struct resource *res;

	/*
	 * Legacy bindings only allow connecting a single NAND with a unique CS
	 * line to the controller.
	 */
	nand = FUNC6(nc->dev, sizeof(*nand) + sizeof(*nand->cs),
			    GFP_KERNEL);
	if (!nand)
		return -ENOMEM;

	nand->numcs = 1;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	nand->cs[0].io.virt = FUNC5(dev, res);
	if (FUNC0(nand->cs[0].io.virt))
		return FUNC1(nand->cs[0].io.virt);

	nand->cs[0].io.dma = res->start;

	/*
	 * The old driver was hardcoding the CS id to 3 for all sama5
	 * controllers. Since this id is only meaningful for the sama5
	 * controller we can safely assign this id to 3 no matter the
	 * controller.
	 * If one wants to connect a NAND to a different CS line, he will
	 * have to use the new bindings.
	 */
	nand->cs[0].id = 3;

	/* R/B GPIO. */
	gpio = FUNC4(dev, NULL, 0,  GPIOD_IN);
	if (FUNC0(gpio)) {
		FUNC3(dev, "Failed to get R/B gpio (err = %ld)\n",
			FUNC1(gpio));
		return FUNC1(gpio);
	}

	if (gpio) {
		nand->cs[0].rb.type = ATMEL_NAND_GPIO_RB;
		nand->cs[0].rb.gpio = gpio;
	}

	/* CS GPIO. */
	gpio = FUNC4(dev, NULL, 1, GPIOD_OUT_HIGH);
	if (FUNC0(gpio)) {
		FUNC3(dev, "Failed to get CS gpio (err = %ld)\n",
			FUNC1(gpio));
		return FUNC1(gpio);
	}

	nand->cs[0].csgpio = gpio;

	/* Card detect GPIO. */
	gpio = FUNC4(nc->dev, NULL, 2, GPIOD_IN);
	if (FUNC0(gpio)) {
		FUNC3(dev,
			"Failed to get detect gpio (err = %ld)\n",
			FUNC1(gpio));
		return FUNC1(gpio);
	}

	nand->cdgpio = gpio;

	FUNC7(&nand->base, nc->dev->of_node);

	return FUNC2(nc, nand);
}
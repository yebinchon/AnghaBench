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
typedef  scalar_t__ u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int /*<<< orphan*/  fwnode; } ;
struct atmel_nand_controller {int /*<<< orphan*/  dev; } ;
struct atmel_nand {int numcs; int /*<<< orphan*/  base; TYPE_3__* cs; struct gpio_desc* cdgpio; } ;
struct TYPE_5__ {struct gpio_desc* gpio; int /*<<< orphan*/  type; scalar_t__ id; } ;
struct TYPE_4__ {struct gpio_desc* virt; int /*<<< orphan*/  dma; } ;
struct TYPE_6__ {struct gpio_desc* csgpio; TYPE_2__ rb; TYPE_1__ io; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_NAND_GPIO_RB ; 
 int /*<<< orphan*/  ATMEL_NAND_NATIVE_RB ; 
 scalar_t__ ATMEL_NFC_MAX_RB_ID ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct atmel_nand* FUNC0 (struct gpio_desc*) ; 
 struct atmel_nand* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC2 (struct gpio_desc*) ; 
 int FUNC3 (struct gpio_desc*) ; 
 int /*<<< orphan*/  cs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct gpio_desc* FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct gpio_desc* FUNC6 (int /*<<< orphan*/ ,struct resource*) ; 
 struct atmel_nand* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct device_node*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC10 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC12 (struct device_node*,char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (struct atmel_nand*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct atmel_nand *FUNC14(struct atmel_nand_controller *nc,
					    struct device_node *np,
					    int reg_cells)
{
	struct atmel_nand *nand;
	struct gpio_desc *gpio;
	int numcs, ret, i;

	numcs = FUNC10(np, "reg",
						reg_cells * sizeof(u32));
	if (numcs < 1) {
		FUNC4(nc->dev, "Missing or invalid reg property\n");
		return FUNC1(-EINVAL);
	}

	nand = FUNC7(nc->dev, FUNC13(nand, cs, numcs), GFP_KERNEL);
	if (!nand) {
		FUNC4(nc->dev, "Failed to allocate NAND object\n");
		return FUNC1(-ENOMEM);
	}

	nand->numcs = numcs;

	gpio = FUNC5(nc->dev, "det", 0,
						      &np->fwnode, GPIOD_IN,
						      "nand-det");
	if (FUNC2(gpio) && FUNC3(gpio) != -ENOENT) {
		FUNC4(nc->dev,
			"Failed to get detect gpio (err = %ld)\n",
			FUNC3(gpio));
		return FUNC0(gpio);
	}

	if (!FUNC2(gpio))
		nand->cdgpio = gpio;

	for (i = 0; i < numcs; i++) {
		struct resource res;
		u32 val;

		ret = FUNC9(np, 0, &res);
		if (ret) {
			FUNC4(nc->dev, "Invalid reg property (err = %d)\n",
				ret);
			return FUNC1(ret);
		}

		ret = FUNC12(np, "reg", i * reg_cells,
						 &val);
		if (ret) {
			FUNC4(nc->dev, "Invalid reg property (err = %d)\n",
				ret);
			return FUNC1(ret);
		}

		nand->cs[i].id = val;

		nand->cs[i].io.dma = res.start;
		nand->cs[i].io.virt = FUNC6(nc->dev, &res);
		if (FUNC2(nand->cs[i].io.virt))
			return FUNC0(nand->cs[i].io.virt);

		if (!FUNC11(np, "atmel,rb", &val)) {
			if (val > ATMEL_NFC_MAX_RB_ID)
				return FUNC1(-EINVAL);

			nand->cs[i].rb.type = ATMEL_NAND_NATIVE_RB;
			nand->cs[i].rb.id = val;
		} else {
			gpio = FUNC5(nc->dev,
							"rb", i, &np->fwnode,
							GPIOD_IN, "nand-rb");
			if (FUNC2(gpio) && FUNC3(gpio) != -ENOENT) {
				FUNC4(nc->dev,
					"Failed to get R/B gpio (err = %ld)\n",
					FUNC3(gpio));
				return FUNC0(gpio);
			}

			if (!FUNC2(gpio)) {
				nand->cs[i].rb.type = ATMEL_NAND_GPIO_RB;
				nand->cs[i].rb.gpio = gpio;
			}
		}

		gpio = FUNC5(nc->dev, "cs",
							      i, &np->fwnode,
							      GPIOD_OUT_HIGH,
							      "nand-cs");
		if (FUNC2(gpio) && FUNC3(gpio) != -ENOENT) {
			FUNC4(nc->dev,
				"Failed to get CS gpio (err = %ld)\n",
				FUNC3(gpio));
			return FUNC0(gpio);
		}

		if (!FUNC2(gpio))
			nand->cs[i].csgpio = gpio;
	}

	FUNC8(&nand->base, np);

	return nand;
}
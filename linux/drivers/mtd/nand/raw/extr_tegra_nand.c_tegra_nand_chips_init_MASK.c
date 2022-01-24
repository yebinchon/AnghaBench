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
struct tegra_nand_controller {struct nand_chip* chip; int /*<<< orphan*/  controller; } ;
struct nand_chip {int options; int /*<<< orphan*/ * controller; } ;
struct tegra_nand_chip {int /*<<< orphan*/  ecc; struct nand_chip chip; int /*<<< orphan*/  wp_gpio; int /*<<< orphan*/ * cs; } ;
struct TYPE_2__ {struct device* parent; } ;
struct mtd_info {char* name; int /*<<< orphan*/  owner; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NAND_NO_SUBPAGE_WRITE ; 
 int NAND_USE_BOUNCE_BUFFER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tegra_nand_chip* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*) ; 
 int FUNC8 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,struct device_node*) ; 
 struct mtd_info* FUNC10 (struct nand_chip*) ; 
 int FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (struct device_node*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct device_node*,char*,int) ; 
 int FUNC14 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct device *dev,
				 struct tegra_nand_controller *ctrl)
{
	struct device_node *np = dev->of_node;
	struct device_node *np_nand;
	int nsels, nchips = FUNC11(np);
	struct tegra_nand_chip *nand;
	struct mtd_info *mtd;
	struct nand_chip *chip;
	int ret;
	u32 cs;

	if (nchips != 1) {
		FUNC2(dev, "Currently only one NAND chip supported\n");
		return -EINVAL;
	}

	np_nand = FUNC12(np, NULL);

	nsels = FUNC13(np_nand, "reg", sizeof(u32));
	if (nsels != 1) {
		FUNC2(dev, "Missing/invalid reg property\n");
		return -EINVAL;
	}

	/* Retrieve CS id, currently only single die NAND supported */
	ret = FUNC14(np_nand, "reg", &cs);
	if (ret) {
		FUNC2(dev, "could not retrieve reg property: %d\n", ret);
		return ret;
	}

	nand = FUNC4(dev, sizeof(*nand), GFP_KERNEL);
	if (!nand)
		return -ENOMEM;

	nand->cs[0] = cs;

	nand->wp_gpio = FUNC3(dev, "wp", GPIOD_OUT_LOW);

	if (FUNC0(nand->wp_gpio)) {
		ret = FUNC1(nand->wp_gpio);
		FUNC2(dev, "Failed to request WP GPIO: %d\n", ret);
		return ret;
	}

	chip = &nand->chip;
	chip->controller = &ctrl->controller;

	mtd = FUNC10(chip);

	mtd->dev.parent = dev;
	mtd->owner = THIS_MODULE;

	FUNC9(chip, np_nand);

	if (!mtd->name)
		mtd->name = "tegra_nand";

	chip->options = NAND_NO_SUBPAGE_WRITE | NAND_USE_BOUNCE_BUFFER;

	ret = FUNC8(chip, 1);
	if (ret)
		return ret;

	FUNC6(mtd, 0, &nand->ecc);

	ret = FUNC5(mtd, NULL, 0);
	if (ret) {
		FUNC2(dev, "Failed to register mtd device: %d\n", ret);
		FUNC7(chip);
		return ret;
	}

	ctrl->chip = chip;

	return 0;
}
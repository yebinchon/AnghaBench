#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nand_chip {int /*<<< orphan*/  options; TYPE_1__* controller; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {TYPE_2__ dev; int /*<<< orphan*/  owner; } ;
struct meson_nfc_nand_chip {int nsels; int /*<<< orphan*/  node; struct nand_chip nand; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; } ;
struct meson_nfc {int /*<<< orphan*/  chips; TYPE_1__ controller; int /*<<< orphan*/  assigned_cs; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_CE_NUM ; 
 int /*<<< orphan*/  NAND_USE_BOUNCE_BUFFER ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct meson_nfc_nand_chip* FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  meson_nand_controller_ops ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,struct meson_nfc*) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,struct device_node*) ; 
 struct mtd_info* FUNC8 (struct nand_chip*) ; 
 int FUNC9 (struct device_node*,char*,int) ; 
 int FUNC10 (struct device_node*,char*,int,int*) ; 
 int /*<<< orphan*/  sels ; 
 int /*<<< orphan*/  FUNC11 (struct meson_nfc_nand_chip*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct device *dev,
			 struct meson_nfc *nfc, struct device_node *np)
{
	struct meson_nfc_nand_chip *meson_chip;
	struct nand_chip *nand;
	struct mtd_info *mtd;
	int ret, i;
	u32 tmp, nsels;

	nsels = FUNC9(np, "reg", sizeof(u32));
	if (!nsels || nsels > MAX_CE_NUM) {
		FUNC0(dev, "invalid register property size\n");
		return -EINVAL;
	}

	meson_chip = FUNC1(dev, FUNC11(meson_chip, sels, nsels),
				  GFP_KERNEL);
	if (!meson_chip)
		return -ENOMEM;

	meson_chip->nsels = nsels;

	for (i = 0; i < nsels; i++) {
		ret = FUNC10(np, "reg", i, &tmp);
		if (ret) {
			FUNC0(dev, "could not retrieve register property: %d\n",
				ret);
			return ret;
		}

		if (FUNC12(tmp, &nfc->assigned_cs)) {
			FUNC0(dev, "CS %d already assigned\n", tmp);
			return -EINVAL;
		}
	}

	nand = &meson_chip->nand;
	nand->controller = &nfc->controller;
	nand->controller->ops = &meson_nand_controller_ops;
	FUNC7(nand, np);
	FUNC6(nand, nfc);

	nand->options |= NAND_USE_BOUNCE_BUFFER;
	mtd = FUNC8(nand);
	mtd->owner = THIS_MODULE;
	mtd->dev.parent = dev;

	ret = FUNC5(nand, nsels);
	if (ret)
		return ret;

	ret = FUNC3(mtd, NULL, 0);
	if (ret) {
		FUNC0(dev, "failed to register MTD device: %d\n", ret);
		FUNC4(nand);
		return ret;
	}

	FUNC2(&meson_chip->node, &nfc->chips);

	return 0;
}
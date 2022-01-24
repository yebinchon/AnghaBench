#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;
struct sunxi_nfc {int /*<<< orphan*/  chips; TYPE_2__ controller; int /*<<< orphan*/  assigned_cs; } ;
struct TYPE_7__ {int /*<<< orphan*/  mode; } ;
struct nand_chip {TYPE_3__ ecc; TYPE_2__* controller; } ;
struct sunxi_nand_chip {int nsels; int /*<<< orphan*/  node; struct nand_chip nand; TYPE_1__* sels; } ;
struct TYPE_8__ {struct device* parent; } ;
struct mtd_info {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int cs; int rb; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAND_ECC_HW ; 
 int NFC_MAX_CS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct sunxi_nand_chip* FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,struct device_node*) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*,int*) ; 
 int FUNC9 (struct device_node*,char*,int,int*) ; 
 int /*<<< orphan*/  sels ; 
 int /*<<< orphan*/  FUNC10 (struct sunxi_nand_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sunxi_nand_controller_ops ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct device *dev, struct sunxi_nfc *nfc,
				struct device_node *np)
{
	struct sunxi_nand_chip *sunxi_nand;
	struct mtd_info *mtd;
	struct nand_chip *nand;
	int nsels;
	int ret;
	int i;
	u32 tmp;

	if (!FUNC8(np, "reg", &nsels))
		return -EINVAL;

	nsels /= sizeof(u32);
	if (!nsels) {
		FUNC0(dev, "invalid reg property size\n");
		return -EINVAL;
	}

	sunxi_nand = FUNC1(dev, FUNC10(sunxi_nand, sels, nsels),
				  GFP_KERNEL);
	if (!sunxi_nand) {
		FUNC0(dev, "could not allocate chip\n");
		return -ENOMEM;
	}

	sunxi_nand->nsels = nsels;

	for (i = 0; i < nsels; i++) {
		ret = FUNC9(np, "reg", i, &tmp);
		if (ret) {
			FUNC0(dev, "could not retrieve reg property: %d\n",
				ret);
			return ret;
		}

		if (tmp > NFC_MAX_CS) {
			FUNC0(dev,
				"invalid reg value: %u (max CS = 7)\n",
				tmp);
			return -EINVAL;
		}

		if (FUNC11(tmp, &nfc->assigned_cs)) {
			FUNC0(dev, "CS %d already assigned\n", tmp);
			return -EINVAL;
		}

		sunxi_nand->sels[i].cs = tmp;

		if (!FUNC9(np, "allwinner,rb", i, &tmp) &&
		    tmp < 2)
			sunxi_nand->sels[i].rb = tmp;
		else
			sunxi_nand->sels[i].rb = -1;
	}

	nand = &sunxi_nand->nand;
	/* Default tR value specified in the ONFI spec (chapter 4.15.1) */
	nand->controller = &nfc->controller;
	nand->controller->ops = &sunxi_nand_controller_ops;

	/*
	 * Set the ECC mode to the default value in case nothing is specified
	 * in the DT.
	 */
	nand->ecc.mode = NAND_ECC_HW;
	FUNC6(nand, np);

	mtd = FUNC7(nand);
	mtd->dev.parent = dev;

	ret = FUNC5(nand, nsels);
	if (ret)
		return ret;

	ret = FUNC3(mtd, NULL, 0);
	if (ret) {
		FUNC0(dev, "failed to register mtd device: %d\n", ret);
		FUNC4(nand);
		return ret;
	}

	FUNC2(&sunxi_nand->node, &nfc->chips);

	return 0;
}
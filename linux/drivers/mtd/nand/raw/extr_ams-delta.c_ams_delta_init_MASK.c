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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  algo; int /*<<< orphan*/  mode; } ;
struct nand_chip {TYPE_3__* controller; TYPE_2__ ecc; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct mtd_info {TYPE_1__ dev; } ;
struct gpio_descs {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;
struct ams_delta_nand {int data_in; TYPE_3__ base; struct gpio_descs* data_gpiods; struct gpio_descs* gpiod_cle; struct gpio_descs* gpiod_ale; struct gpio_descs* gpiod_nwe; struct gpio_descs* gpiod_nre; struct gpio_descs* gpiod_nce; struct gpio_descs* gpiod_nwp; struct gpio_descs* gpiod_rdy; struct nand_chip nand_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (struct gpio_descs*) ; 
 int /*<<< orphan*/  NAND_ECC_HAMMING ; 
 int /*<<< orphan*/  NAND_ECC_SOFT ; 
 int FUNC2 (struct gpio_descs*) ; 
 int /*<<< orphan*/  ams_delta_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct gpio_descs* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct gpio_descs* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ams_delta_nand* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mtd_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int FUNC12 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nand_chip*,struct ams_delta_nand*) ; 
 struct mtd_info* FUNC14 (struct nand_chip*) ; 
 int /*<<< orphan*/  partition_info ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct ams_delta_nand*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct ams_delta_nand *priv;
	struct nand_chip *this;
	struct mtd_info *mtd;
	struct gpio_descs *data_gpiods;
	int err = 0;

	/* Allocate memory for MTD device structure and private data */
	priv = FUNC8(&pdev->dev, sizeof(struct ams_delta_nand),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	this = &priv->nand_chip;

	mtd = FUNC14(this);
	mtd->dev.parent = &pdev->dev;

	FUNC13(this, priv);

	priv->gpiod_rdy = FUNC7(&pdev->dev, "rdy", GPIOD_IN);
	if (FUNC1(priv->gpiod_rdy)) {
		err = FUNC2(priv->gpiod_rdy);
		FUNC4(&pdev->dev, "RDY GPIO request failed (%d)\n", err);
		return err;
	}

	this->ecc.mode = NAND_ECC_SOFT;
	this->ecc.algo = NAND_ECC_HAMMING;

	FUNC15(pdev, priv);

	/* Set chip enabled, but  */
	priv->gpiod_nwp = FUNC5(&pdev->dev, "nwp", GPIOD_OUT_HIGH);
	if (FUNC1(priv->gpiod_nwp)) {
		err = FUNC2(priv->gpiod_nwp);
		FUNC3(&pdev->dev, "NWP GPIO request failed (%d)\n", err);
		return err;
	}

	priv->gpiod_nce = FUNC5(&pdev->dev, "nce", GPIOD_OUT_HIGH);
	if (FUNC1(priv->gpiod_nce)) {
		err = FUNC2(priv->gpiod_nce);
		FUNC3(&pdev->dev, "NCE GPIO request failed (%d)\n", err);
		return err;
	}

	priv->gpiod_nre = FUNC5(&pdev->dev, "nre", GPIOD_OUT_HIGH);
	if (FUNC1(priv->gpiod_nre)) {
		err = FUNC2(priv->gpiod_nre);
		FUNC3(&pdev->dev, "NRE GPIO request failed (%d)\n", err);
		return err;
	}

	priv->gpiod_nwe = FUNC5(&pdev->dev, "nwe", GPIOD_OUT_HIGH);
	if (FUNC1(priv->gpiod_nwe)) {
		err = FUNC2(priv->gpiod_nwe);
		FUNC3(&pdev->dev, "NWE GPIO request failed (%d)\n", err);
		return err;
	}

	priv->gpiod_ale = FUNC5(&pdev->dev, "ale", GPIOD_OUT_LOW);
	if (FUNC1(priv->gpiod_ale)) {
		err = FUNC2(priv->gpiod_ale);
		FUNC3(&pdev->dev, "ALE GPIO request failed (%d)\n", err);
		return err;
	}

	priv->gpiod_cle = FUNC5(&pdev->dev, "cle", GPIOD_OUT_LOW);
	if (FUNC1(priv->gpiod_cle)) {
		err = FUNC2(priv->gpiod_cle);
		FUNC3(&pdev->dev, "CLE GPIO request failed (%d)\n", err);
		return err;
	}

	/* Request array of data pins, initialize them as input */
	data_gpiods = FUNC6(&pdev->dev, "data", GPIOD_IN);
	if (FUNC1(data_gpiods)) {
		err = FUNC2(data_gpiods);
		FUNC3(&pdev->dev, "data GPIO request failed: %d\n", err);
		return err;
	}
	priv->data_gpiods = data_gpiods;
	priv->data_in = true;

	/* Initialize the NAND controller object embedded in ams_delta_nand. */
	priv->base.ops = &ams_delta_ops;
	FUNC11(&priv->base);
	this->controller = &priv->base;

	/* Scan to find existence of the device */
	err = FUNC12(this, 1);
	if (err)
		return err;

	/* Register the partitions */
	err = FUNC9(mtd, partition_info,
				  FUNC0(partition_info));
	if (err)
		goto err_nand_cleanup;

	return 0;

err_nand_cleanup:
	FUNC10(this);

	return err;
}
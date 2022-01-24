#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  block_markbad; } ;
struct nand_chip {TYPE_6__* controller; int /*<<< orphan*/  options; int /*<<< orphan*/ * badblock_pattern; TYPE_4__ legacy; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct mtd_info {char* name; TYPE_1__ dev; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_11__ {int payload_size; int auxiliary_size; } ;
struct gpmi_nand_data {int swap_block_mark; TYPE_6__ base; TYPE_5__ bch_geometry; TYPE_3__* pdev; int /*<<< orphan*/  dev; struct nand_chip nand; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_9__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpmi_nand_data*) ; 
 scalar_t__ FUNC1 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  NAND_NO_SUBPAGE_WRITE ; 
 int FUNC2 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  gpmi_bbt_descr ; 
 int /*<<< orphan*/  gpmi_block_markbad ; 
 int /*<<< orphan*/  FUNC3 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  gpmi_nand_controller_ops ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int FUNC8 (struct nand_chip*) ; 
 int FUNC9 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nand_chip*,struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC12 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC13(struct gpmi_nand_data *this)
{
	struct nand_chip *chip = &this->nand;
	struct mtd_info  *mtd = FUNC12(chip);
	int ret;

	/* init the MTD data structures */
	mtd->name		= "gpmi-nand";
	mtd->dev.parent		= this->dev;

	/* init the nand_chip{}, we don't support a 16-bit NAND Flash bus. */
	FUNC10(chip, this);
	FUNC11(chip, this->pdev->dev.of_node);
	chip->legacy.block_markbad = gpmi_block_markbad;
	chip->badblock_pattern	= &gpmi_bbt_descr;
	chip->options		|= NAND_NO_SUBPAGE_WRITE;

	/* Set up swap_block_mark, must be set before the gpmi_set_geometry() */
	this->swap_block_mark = !FUNC0(this);

	/*
	 * Allocate a temporary DMA buffer for reading ID in the
	 * nand_scan_ident().
	 */
	this->bch_geometry.payload_size = 1024;
	this->bch_geometry.auxiliary_size = 128;
	ret = FUNC2(this);
	if (ret)
		goto err_out;

	FUNC7(&this->base);
	this->base.ops = &gpmi_nand_controller_ops;
	chip->controller = &this->base;

	ret = FUNC9(chip, FUNC1(this) ? 2 : 1);
	if (ret)
		goto err_out;

	ret = FUNC5(this);
	if (ret)
		goto err_nand_cleanup;
	ret = FUNC8(chip);
	if (ret)
		goto err_nand_cleanup;

	ret = FUNC4(mtd, NULL, 0);
	if (ret)
		goto err_nand_cleanup;
	return 0;

err_nand_cleanup:
	FUNC6(chip);
err_out:
	FUNC3(this);
	return ret;
}
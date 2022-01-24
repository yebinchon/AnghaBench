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
struct TYPE_5__ {int /*<<< orphan*/  block_markbad; int /*<<< orphan*/  block_bad; void* get_features; void* set_features; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  select_chip; int /*<<< orphan*/  cmdfunc; } ;
struct nand_chip {int options; int /*<<< orphan*/ * controller; TYPE_2__ legacy; } ;
struct qcom_nand_host {int status; int /*<<< orphan*/  cs; struct nand_chip chip; } ;
struct qcom_nand_controller {struct device* dev; int /*<<< orphan*/  bam_txn; TYPE_3__* props; int /*<<< orphan*/  controller; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {scalar_t__ is_bam; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAND_NO_SUBPAGE_WRITE ; 
 int NAND_SKIP_BBTSCAN ; 
 int NAND_STATUS_READY ; 
 int NAND_STATUS_WP ; 
 int NAND_USE_BOUNCE_BUFFER ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_nand_controller*) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*) ; 
 void* nand_get_set_features_notsupp ; 
 int FUNC6 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,struct device_node*) ; 
 struct mtd_info* FUNC8 (struct nand_chip*) ; 
 int FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qcom_nandc_block_bad ; 
 int /*<<< orphan*/  qcom_nandc_block_markbad ; 
 int /*<<< orphan*/  qcom_nandc_command ; 
 int /*<<< orphan*/  qcom_nandc_read_buf ; 
 int /*<<< orphan*/  qcom_nandc_read_byte ; 
 int /*<<< orphan*/  qcom_nandc_select_chip ; 
 int /*<<< orphan*/  qcom_nandc_write_buf ; 

__attribute__((used)) static int FUNC10(struct qcom_nand_controller *nandc,
					    struct qcom_nand_host *host,
					    struct device_node *dn)
{
	struct nand_chip *chip = &host->chip;
	struct mtd_info *mtd = FUNC8(chip);
	struct device *dev = nandc->dev;
	int ret;

	ret = FUNC9(dn, "reg", &host->cs);
	if (ret) {
		FUNC1(dev, "can't get chip-select\n");
		return -ENXIO;
	}

	FUNC7(chip, dn);
	mtd->name = FUNC2(dev, GFP_KERNEL, "qcom_nand.%d", host->cs);
	if (!mtd->name)
		return -ENOMEM;

	mtd->owner = THIS_MODULE;
	mtd->dev.parent = dev;

	chip->legacy.cmdfunc	= qcom_nandc_command;
	chip->legacy.select_chip	= qcom_nandc_select_chip;
	chip->legacy.read_byte	= qcom_nandc_read_byte;
	chip->legacy.read_buf	= qcom_nandc_read_buf;
	chip->legacy.write_buf	= qcom_nandc_write_buf;
	chip->legacy.set_features	= nand_get_set_features_notsupp;
	chip->legacy.get_features	= nand_get_set_features_notsupp;

	/*
	 * the bad block marker is readable only when we read the last codeword
	 * of a page with ECC disabled. currently, the nand_base and nand_bbt
	 * helpers don't allow us to read BB from a nand chip with ECC
	 * disabled (MTD_OPS_PLACE_OOB is set by default). use the block_bad
	 * and block_markbad helpers until we permanently switch to using
	 * MTD_OPS_RAW for all drivers (with the help of badblockbits)
	 */
	chip->legacy.block_bad		= qcom_nandc_block_bad;
	chip->legacy.block_markbad	= qcom_nandc_block_markbad;

	chip->controller = &nandc->controller;
	chip->options |= NAND_NO_SUBPAGE_WRITE | NAND_USE_BOUNCE_BUFFER |
			 NAND_SKIP_BBTSCAN;

	/* set up initial status value */
	host->status = NAND_STATUS_READY | NAND_STATUS_WP;

	ret = FUNC6(chip, 1);
	if (ret)
		return ret;

	if (nandc->props->is_bam) {
		FUNC3(nandc);
		nandc->bam_txn = FUNC0(nandc);
		if (!nandc->bam_txn) {
			FUNC1(nandc->dev,
				"failed to allocate bam transaction\n");
			return -ENOMEM;
		}
	}

	ret = FUNC4(mtd, NULL, 0);
	if (ret)
		FUNC5(chip);

	return ret;
}
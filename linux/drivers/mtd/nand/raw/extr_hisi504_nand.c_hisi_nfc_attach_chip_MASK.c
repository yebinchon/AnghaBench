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
struct TYPE_2__ {scalar_t__ mode; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; scalar_t__ oobsize; } ;
struct hinfc_host {int /*<<< orphan*/  dev; int /*<<< orphan*/  buffer; scalar_t__ dma_buffer; scalar_t__ dma_oob; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HINFC504_CON ; 
 int HINFC504_CON_PAGEISZE_SHIFT ; 
 int HINFC504_CON_PAGESIZE_MASK ; 
 scalar_t__ NAND_ECC_HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hinfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinfc_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hinfc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 struct hinfc_host* FUNC6 (struct nand_chip*) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *chip)
{
	struct mtd_info *mtd = FUNC7(chip);
	struct hinfc_host *host = FUNC6(chip);
	int flag;

	host->buffer = FUNC1(host->dev,
					   mtd->writesize + mtd->oobsize,
					   &host->dma_buffer, GFP_KERNEL);
	if (!host->buffer)
		return -ENOMEM;

	host->dma_oob = host->dma_buffer + mtd->writesize;
	FUNC5(host->buffer, 0xff, mtd->writesize + mtd->oobsize);

	flag = FUNC2(host, HINFC504_CON);
	flag &= ~(HINFC504_CON_PAGESIZE_MASK << HINFC504_CON_PAGEISZE_SHIFT);
	switch (mtd->writesize) {
	case 2048:
		flag |= (0x001 << HINFC504_CON_PAGEISZE_SHIFT);
		break;
	/*
	 * TODO: add more pagesize support,
	 * default pagesize has been set in hisi_nfc_host_init
	 */
	default:
		FUNC0(host->dev, "NON-2KB page size nand flash\n");
		return -EINVAL;
	}
	FUNC3(host, flag, HINFC504_CON);

	if (chip->ecc.mode == NAND_ECC_HW)
		FUNC4(host);

	return 0;
}
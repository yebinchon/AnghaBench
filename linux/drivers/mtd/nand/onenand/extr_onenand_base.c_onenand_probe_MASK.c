#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct onenand_chip {int (* chip_probe ) (struct mtd_info*) ;int (* read_word ) (scalar_t__) ;int technology; int device_id; int version_id; int dies; int chipsize; int erase_shift; int page_shift; int page_mask; int density_mask; int writesize; scalar_t__ base; } ;
struct mtd_info {int numeraseregions; int writesize; int oobsize; int erasesize; int size; int /*<<< orphan*/  eraseregions; struct onenand_chip* priv; } ;
struct mtd_erase_region_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct onenand_chip*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct onenand_chip*) ; 
 scalar_t__ FUNC2 (struct onenand_chip*) ; 
 scalar_t__ FUNC3 (struct onenand_chip*) ; 
 scalar_t__ ONENAND_REG_DATA_BUFFER_SIZE ; 
 scalar_t__ ONENAND_REG_DEVICE_ID ; 
 scalar_t__ ONENAND_REG_TECHNOLOGY ; 
 scalar_t__ ONENAND_REG_VERSION_ID ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 (struct mtd_info*) ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct mtd_info *mtd)
{
	struct onenand_chip *this = mtd->priv;
	int dev_id, ver_id;
	int density;
	int ret;

	ret = this->chip_probe(mtd);
	if (ret)
		return ret;

	/* Device and version IDs from Register */
	dev_id = this->read_word(this->base + ONENAND_REG_DEVICE_ID);
	ver_id = this->read_word(this->base + ONENAND_REG_VERSION_ID);
	this->technology = this->read_word(this->base + ONENAND_REG_TECHNOLOGY);

	/* Flash device information */
	FUNC9(dev_id, ver_id);
	this->device_id = dev_id;
	this->version_id = ver_id;

	/* Check OneNAND features */
	FUNC7(mtd);

	density = FUNC8(dev_id);
	if (FUNC0(this)) {
		this->dies = FUNC3(this) ? 2 : 1;
		/* Maximum possible erase regions */
		mtd->numeraseregions = this->dies << 1;
		mtd->eraseregions =
			FUNC6(this->dies << 1,
				sizeof(struct mtd_erase_region_info),
				GFP_KERNEL);
		if (!mtd->eraseregions)
			return -ENOMEM;
	}

	/*
	 * For Flex-OneNAND, chipsize represents maximum possible device size.
	 * mtd->size represents the actual device size.
	 */
	this->chipsize = (16 << density) << 20;

	/* OneNAND page size & block size */
	/* The data buffer size is equal to page size */
	mtd->writesize = this->read_word(this->base + ONENAND_REG_DATA_BUFFER_SIZE);
	/* We use the full BufferRAM */
	if (FUNC2(this))
		mtd->writesize <<= 1;

	mtd->oobsize = mtd->writesize >> 5;
	/* Pages per a block are always 64 in OneNAND */
	mtd->erasesize = mtd->writesize << 6;
	/*
	 * Flex-OneNAND SLC area has 64 pages per block.
	 * Flex-OneNAND MLC area has 128 pages per block.
	 * Expose MLC erase size to find erase_shift and page_mask.
	 */
	if (FUNC0(this))
		mtd->erasesize <<= 1;

	this->erase_shift = FUNC4(mtd->erasesize) - 1;
	this->page_shift = FUNC4(mtd->writesize) - 1;
	this->page_mask = (1 << (this->erase_shift - this->page_shift)) - 1;
	/* Set density mask. it is used for DDP */
	if (FUNC3(this))
		this->density_mask = this->chipsize >> (this->erase_shift + 1);
	/* It's real page size */
	this->writesize = mtd->writesize;

	/* REVISIT: Multichip handling */

	if (FUNC0(this))
		FUNC5(mtd);
	else
		mtd->size = this->chipsize;

	/*
	 * We emulate the 4KiB page and 256KiB erase block size
	 * But oobsize is still 64 bytes.
	 * It is only valid if you turn on 2X program support,
	 * Otherwise it will be ignored by compiler.
	 */
	if (FUNC1(this)) {
		mtd->writesize <<= 1;
		mtd->erasesize <<= 1;
	}

	return 0;
}
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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
struct nand_memory_organization {int planes_per_lun; int luns_per_target; int pagesize; int pages_per_eraseblock; int /*<<< orphan*/  eraseblocks_per_lun; } ;
struct nand_manufacturer {int dummy; } ;
struct nand_flash_dev {scalar_t__ dev_id; int options; scalar_t__ chipsize; int /*<<< orphan*/  pagesize; int /*<<< orphan*/ * name; } ;
struct TYPE_6__ {scalar_t__ model; } ;
struct TYPE_5__ {struct nand_manufacturer const* desc; } ;
struct TYPE_4__ {scalar_t__* data; int /*<<< orphan*/  len; } ;
struct nand_chip {int options; int page_shift; int pagemask; int chip_shift; int badblockbits; TYPE_3__ parameters; void* phys_erase_shift; void* bbt_erase_shift; int /*<<< orphan*/  base; TYPE_2__ manufacturer; TYPE_1__ id; } ;
struct mtd_info {unsigned int writesize; unsigned int erasesize; int /*<<< orphan*/  oobsize; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAND_BUSWIDTH_16 ; 
 int NAND_BUSWIDTH_AUTO ; 
 int NAND_ROW_ADDR_3 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (struct nand_chip*,struct nand_flash_dev*) ; 
 scalar_t__ FUNC5 (struct nand_flash_dev*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,struct nand_flash_dev*) ; 
 struct nand_flash_dev* nand_flash_ids ; 
 struct nand_manufacturer* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct nand_chip*) ; 
 int FUNC13 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC14 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC15 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC16 (struct nand_manufacturer const*) ; 
 int FUNC17 (struct nand_chip*) ; 
 int FUNC18 (struct nand_chip*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC19 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct nand_chip*) ; 
 struct mtd_info* FUNC22 (struct nand_chip*) ; 
 struct nand_memory_organization* FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,int) ; 

__attribute__((used)) static int FUNC27(struct nand_chip *chip, struct nand_flash_dev *type)
{
	const struct nand_manufacturer *manufacturer;
	struct mtd_info *mtd = FUNC22(chip);
	struct nand_memory_organization *memorg;
	int busw, ret;
	u8 *id_data = chip->id.data;
	u8 maf_id, dev_id;
	u64 targetsize;

	/*
	 * Let's start by initializing memorg fields that might be left
	 * unassigned by the ID-based detection logic.
	 */
	memorg = FUNC23(&chip->base);
	memorg->planes_per_lun = 1;
	memorg->luns_per_target = 1;

	/*
	 * Reset the chip, required by some chips (e.g. Micron MT29FxGxxxxx)
	 * after power-up.
	 */
	ret = FUNC19(chip, 0);
	if (ret)
		return ret;

	/* Select the device */
	FUNC20(chip, 0);

	/* Send the command for reading device ID */
	ret = FUNC18(chip, 0, id_data, 2);
	if (ret)
		return ret;

	/* Read manufacturer and device IDs */
	maf_id = id_data[0];
	dev_id = id_data[1];

	/*
	 * Try again to make sure, as some systems the bus-hold or other
	 * interface concerns can cause random data which looks like a
	 * possibly credible NAND flash to appear. If the two results do
	 * not match, ignore the device completely.
	 */

	/* Read entire ID string */
	ret = FUNC18(chip, 0, id_data, sizeof(chip->id.data));
	if (ret)
		return ret;

	if (id_data[0] != maf_id || id_data[1] != dev_id) {
		FUNC25("second ID read did not match %02x,%02x against %02x,%02x\n",
			maf_id, dev_id, id_data[0], id_data[1]);
		return -ENODEV;
	}

	chip->id.len = FUNC11(id_data, FUNC0(chip->id.data));

	/* Try to identify manufacturer */
	manufacturer = FUNC10(maf_id);
	chip->manufacturer.desc = manufacturer;

	if (!type)
		type = nand_flash_ids;

	/*
	 * Save the NAND_BUSWIDTH_16 flag before letting auto-detection logic
	 * override it.
	 * This is required to make sure initial NAND bus width set by the
	 * NAND controller driver is coherent with the real NAND bus width
	 * (extracted by auto-detection code).
	 */
	busw = chip->options & NAND_BUSWIDTH_16;

	/*
	 * The flag is only set (never cleared), reset it to its default value
	 * before starting auto-detection.
	 */
	chip->options &= ~NAND_BUSWIDTH_16;

	for (; type->name != NULL; type++) {
		if (FUNC5(type)) {
			if (FUNC4(chip, type))
				goto ident_done;
		} else if (dev_id == type->dev_id) {
			break;
		}
	}

	if (!type->name || !type->pagesize) {
		/* Check if the chip is ONFI compliant */
		ret = FUNC17(chip);
		if (ret < 0)
			return ret;
		else if (ret)
			goto ident_done;

		/* Check if the chip is JEDEC compliant */
		ret = FUNC13(chip);
		if (ret < 0)
			return ret;
		else if (ret)
			goto ident_done;
	}

	if (!type->name)
		return -ENODEV;

	chip->parameters.model = FUNC7(type->name, GFP_KERNEL);
	if (!chip->parameters.model)
		return -ENOMEM;

	if (!type->pagesize)
		FUNC15(chip);
	else
		FUNC9(chip, type);

	/* Get chip options */
	chip->options |= type->options;

	memorg->eraseblocks_per_lun =
			FUNC1((u64)type->chipsize << 20,
					   memorg->pagesize *
					   memorg->pages_per_eraseblock);

ident_done:
	if (!mtd->name)
		mtd->name = chip->parameters.model;

	if (chip->options & NAND_BUSWIDTH_AUTO) {
		FUNC2(busw & NAND_BUSWIDTH_16);
		FUNC21(chip);
	} else if (busw != (chip->options & NAND_BUSWIDTH_16)) {
		/*
		 * Check, if buswidth is correct. Hardware drivers should set
		 * chip correct!
		 */
		FUNC25("device found, Manufacturer ID: 0x%02x, Chip ID: 0x%02x\n",
			maf_id, dev_id);
		FUNC25("%s %s\n", FUNC16(manufacturer),
			mtd->name);
		FUNC26("bus width %d instead of %d bits\n", busw ? 16 : 8,
			(chip->options & NAND_BUSWIDTH_16) ? 16 : 8);
		ret = -EINVAL;

		goto free_detect_allocation;
	}

	FUNC8(chip);

	/* Calculate the address shift from the page size */
	chip->page_shift = FUNC3(mtd->writesize) - 1;
	/* Convert chipsize to number of pages per chip -1 */
	targetsize = FUNC24(&chip->base);
	chip->pagemask = (targetsize >> chip->page_shift) - 1;

	chip->bbt_erase_shift = chip->phys_erase_shift =
		FUNC3(mtd->erasesize) - 1;
	if (targetsize & 0xffffffff)
		chip->chip_shift = FUNC3((unsigned)targetsize) - 1;
	else {
		chip->chip_shift = FUNC3((unsigned)(targetsize >> 32));
		chip->chip_shift += 32 - 1;
	}

	if (chip->chip_shift - chip->page_shift > 16)
		chip->options |= NAND_ROW_ADDR_3;

	chip->badblockbits = 8;

	FUNC14(chip);

	FUNC25("device found, Manufacturer ID: 0x%02x, Chip ID: 0x%02x\n",
		maf_id, dev_id);
	FUNC25("%s %s\n", FUNC16(manufacturer),
		chip->parameters.model);
	FUNC25("%d MiB, %s, erase size: %d KiB, page size: %d, OOB size: %d\n",
		(int)(targetsize >> 20), FUNC12(chip) ? "SLC" : "MLC",
		mtd->erasesize >> 10, mtd->writesize, mtd->oobsize);
	return 0;

free_detect_allocation:
	FUNC6(chip->parameters.model);

	return ret;
}
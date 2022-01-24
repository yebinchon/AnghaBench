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
typedef  int u8 ;
struct nand_memory_organization {unsigned int ntargets; } ;
struct nand_flash_dev {int dummy; } ;
struct TYPE_4__ {int* data; } ;
struct nand_chip {int cur_cs; int options; int /*<<< orphan*/  base; TYPE_2__ id; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {scalar_t__ parent; } ;
struct mtd_info {unsigned int size; TYPE_1__ dev; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int NAND_SCAN_SILENT_NODEV ; 
 int /*<<< orphan*/  NAND_SDR_IFACE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct nand_chip*,struct nand_flash_dev*) ; 
 int FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct nand_chip*) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC7 (struct nand_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*) ; 
 struct mtd_info* FUNC10 (struct nand_chip*) ; 
 struct nand_memory_organization* FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(struct nand_chip *chip, unsigned int maxchips,
			   struct nand_flash_dev *table)
{
	struct mtd_info *mtd = FUNC10(chip);
	struct nand_memory_organization *memorg;
	int nand_maf_id, nand_dev_id;
	unsigned int i;
	int ret;

	memorg = FUNC11(&chip->base);

	/* Assume all dies are deselected when we enter nand_scan_ident(). */
	chip->cur_cs = -1;

	FUNC1(&chip->lock);

	/* Enforce the right timings for reset/detection */
	FUNC13(chip, NAND_SDR_IFACE, 0);

	ret = FUNC4(chip);
	if (ret)
		return ret;

	if (!mtd->name && mtd->dev.parent)
		mtd->name = FUNC0(mtd->dev.parent);

	/* Set the default functions */
	FUNC9(chip);

	ret = FUNC5(chip);
	if (ret)
		return ret;

	memorg->ntargets = maxchips;

	/* Read the flash type */
	ret = FUNC3(chip, table);
	if (ret) {
		if (!(chip->options & NAND_SCAN_SILENT_NODEV))
			FUNC15("No NAND device found\n");
		FUNC2(chip);
		return ret;
	}

	nand_maf_id = chip->id.data[0];
	nand_dev_id = chip->id.data[1];

	FUNC2(chip);

	/* Check for a chip array */
	for (i = 1; i < maxchips; i++) {
		u8 id[2];

		/* See comment in nand_get_flash_type for reset */
		ret = FUNC7(chip, i);
		if (ret)
			break;

		FUNC8(chip, i);
		/* Send the command for reading device ID */
		ret = FUNC6(chip, 0, id, sizeof(id));
		if (ret)
			break;
		/* Read manufacturer and device IDs */
		if (nand_maf_id != id[0] || nand_dev_id != id[1]) {
			FUNC2(chip);
			break;
		}
		FUNC2(chip);
	}
	if (i > 1)
		FUNC14("%d chips detected\n", i);

	/* Store the number of chips and calc total size for mtd */
	memorg->ntargets = i;
	mtd->size = i * FUNC12(&chip->base);

	return 0;
}
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
typedef  int /*<<< orphan*/  uint8_t ;
struct sm_oob {int data_status; int /*<<< orphan*/  ecc2; int /*<<< orphan*/  ecc1; } ;
struct sm_ftl {int block_size; scalar_t__ smallpagenand; scalar_t__ unstable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_OOB_SIZE ; 
 int SM_SECTOR_SIZE ; 
 int SM_SMALL_PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sm_oob*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sm_ftl*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sm_ftl*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sm_oob*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sm_ftl*,int,int,int,int /*<<< orphan*/ *,struct sm_oob*) ; 
 scalar_t__ FUNC8 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC9(struct sm_ftl *ftl, uint8_t *buf,
			  int zone, int block, int lba,
			  unsigned long invalid_bitmap)
{
	struct sm_oob oob;
	int boffset;
	int retry = 0;

	/* Initialize the oob with requested values */
	FUNC2(&oob, 0xFF, SM_OOB_SIZE);
	FUNC6(&oob, lba);
restart:
	if (ftl->unstable)
		return -EIO;

	for (boffset = 0; boffset < ftl->block_size;
				boffset += SM_SECTOR_SIZE) {

		oob.data_status = 0xFF;

		if (FUNC8(boffset / SM_SECTOR_SIZE, &invalid_bitmap)) {

			FUNC5("sector %d of block at LBA %d of zone %d"
				" couldn't be read, marking it as invalid",
				boffset / SM_SECTOR_SIZE, lba, zone);

			oob.data_status = 0;
		}

		if (ftl->smallpagenand) {
			FUNC1(buf + boffset, SM_SMALL_PAGE,
					oob.ecc1,
					FUNC0(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));

			FUNC1(buf + boffset + SM_SMALL_PAGE,
					SM_SMALL_PAGE, oob.ecc2,
					FUNC0(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
		}
		if (!FUNC7(ftl, zone, block, boffset,
							buf + boffset, &oob))
			continue;

		if (!retry) {

			/* If write fails. try to erase the block */
			/* This is safe, because we never write in blocks
				that contain valuable data.
			This is intended to repair block that are marked
			as erased, but that isn't fully erased*/

			if (FUNC3(ftl, zone, block, 0))
				return -EIO;

			retry = 1;
			goto restart;
		} else {
			FUNC4(ftl, zone, block);
			return -EIO;
		}
	}
	return 0;
}
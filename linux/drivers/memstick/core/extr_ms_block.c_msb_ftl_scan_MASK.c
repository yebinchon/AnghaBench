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
typedef  int u8 ;
typedef  size_t u16 ;
struct msb_data {size_t block_count; size_t* boot_block_locations; size_t* lba_to_pba_table; int /*<<< orphan*/  used_blocks_bitmap; } ;
struct ms_extra_data_register {int management_flag; int overwrite_flag; int /*<<< orphan*/  logical_address; } ;
typedef  int /*<<< orphan*/  extra ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MEMSTICK_MANAGEMENT_ATFLG ; 
 int MEMSTICK_MANAGEMENT_FLAG_NORMAL ; 
 int MEMSTICK_OVERWRITE_BKST ; 
 int MEMSTICK_OVERWRITE_UDST ; 
 size_t MS_BLOCK_INVALID ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ms_extra_data_register*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct msb_data*,size_t) ; 
 scalar_t__ FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct msb_data*,size_t) ; 
 int FUNC10 (struct msb_data*,size_t,int /*<<< orphan*/ ,struct ms_extra_data_register*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t,...) ; 
 scalar_t__ FUNC13 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct msb_data *msb)
{
	u16 pba, lba, other_block;
	u8 overwrite_flag, management_flag, other_overwrite_flag;
	int error;
	struct ms_extra_data_register extra;
	u8 *overwrite_flags = FUNC4(msb->block_count, GFP_KERNEL);

	if (!overwrite_flags)
		return -ENOMEM;

	FUNC1("Start of media scanning");
	for (pba = 0; pba < msb->block_count; pba++) {

		if (pba == msb->boot_block_locations[0] ||
			pba == msb->boot_block_locations[1]) {
			FUNC2("pba %05d -> [boot block]", pba);
			FUNC9(msb, pba);
			continue;
		}

		if (FUNC13(pba, msb->used_blocks_bitmap)) {
			FUNC2("pba %05d -> [factory bad]", pba);
			continue;
		}

		FUNC5(&extra, 0, sizeof(extra));
		error = FUNC10(msb, pba, 0, &extra);

		/* can't trust the page if we can't read the oob */
		if (error == -EBADMSG) {
			FUNC12(
			"oob of pba %d damaged, will try to erase it", pba);
			FUNC9(msb, pba);
			FUNC6(msb, pba);
			continue;
		} else if (error) {
			FUNC11("unknown error %d on read of oob of pba %d - aborting",
				error, pba);

			FUNC3(overwrite_flags);
			return error;
		}

		lba = FUNC0(extra.logical_address);
		management_flag = extra.management_flag;
		overwrite_flag = extra.overwrite_flag;
		overwrite_flags[pba] = overwrite_flag;

		/* Skip bad blocks */
		if (!(overwrite_flag & MEMSTICK_OVERWRITE_BKST)) {
			FUNC1("pba %05d -> [BAD]", pba);
			FUNC9(msb, pba);
			continue;
		}

		/* Skip system/drm blocks */
		if ((management_flag & MEMSTICK_MANAGEMENT_FLAG_NORMAL) !=
			MEMSTICK_MANAGEMENT_FLAG_NORMAL) {
			FUNC1("pba %05d -> [reserved management flag %02x]",
							pba, management_flag);
			FUNC9(msb, pba);
			continue;
		}

		/* Erase temporary tables */
		if (!(management_flag & MEMSTICK_MANAGEMENT_ATFLG)) {
			FUNC1("pba %05d -> [temp table] - will erase", pba);

			FUNC9(msb, pba);
			FUNC6(msb, pba);
			continue;
		}

		if (lba == MS_BLOCK_INVALID) {
			FUNC2("pba %05d -> [free]", pba);
			continue;
		}

		FUNC9(msb, pba);

		/* Block has LBA not according to zoning*/
		if (FUNC7(lba) != FUNC8(pba)) {
			FUNC12("pba %05d -> [bad lba %05d] - will erase",
								pba, lba);
			FUNC6(msb, pba);
			continue;
		}

		/* No collisions - great */
		if (msb->lba_to_pba_table[lba] == MS_BLOCK_INVALID) {
			FUNC2("pba %05d -> [lba %05d]", pba, lba);
			msb->lba_to_pba_table[lba] = pba;
			continue;
		}

		other_block = msb->lba_to_pba_table[lba];
		other_overwrite_flag = overwrite_flags[other_block];

		FUNC12("Collision between pba %d and pba %d",
			pba, other_block);

		if (!(overwrite_flag & MEMSTICK_OVERWRITE_UDST)) {
			FUNC12("pba %d is marked as stable, use it", pba);
			FUNC6(msb, other_block);
			msb->lba_to_pba_table[lba] = pba;
			continue;
		}

		if (!(other_overwrite_flag & MEMSTICK_OVERWRITE_UDST)) {
			FUNC12("pba %d is marked as stable, use it",
								other_block);
			FUNC6(msb, pba);
			continue;
		}

		FUNC12("collision between blocks %d and %d, without stable flag set on both, erasing pba %d",
				pba, other_block, other_block);

		FUNC6(msb, other_block);
		msb->lba_to_pba_table[lba] = pba;
	}

	FUNC1("End of media scanning");
	FUNC3(overwrite_flags);
	return 0;
}
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
typedef  void* uint16_t ;
struct sm_oob {int dummy; } ;
struct sm_ftl {int max_lba; int zone_size; void* cis_block; struct ftl_zone* zones; } ;
struct ftl_zone {void** lba_to_phys_table; int initialized; int /*<<< orphan*/  free_sectors; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (void**) ; 
 void** FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void**,int,int) ; 
 scalar_t__ FUNC12 (struct sm_oob*) ; 
 int /*<<< orphan*/  FUNC13 (struct sm_oob*) ; 
 scalar_t__ FUNC14 (struct sm_ftl*,int,void*) ; 
 int /*<<< orphan*/  FUNC15 (struct sm_ftl*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int FUNC17 (struct sm_oob*) ; 
 scalar_t__ FUNC18 (struct sm_ftl*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sm_oob*) ; 

__attribute__((used)) static int FUNC19(struct sm_ftl *ftl, int zone_num)
{
	struct ftl_zone *zone = &ftl->zones[zone_num];
	struct sm_oob oob;
	uint16_t block;
	int lba;
	int i = 0;
	int len;

	FUNC1("initializing zone %d", zone_num);

	/* Allocate memory for FTL table */
	zone->lba_to_phys_table = FUNC10(ftl->max_lba, 2, GFP_KERNEL);

	if (!zone->lba_to_phys_table)
		return -ENOMEM;
	FUNC11(zone->lba_to_phys_table, -1, ftl->max_lba * 2);


	/* Allocate memory for free sectors FIFO */
	if (FUNC4(&zone->free_sectors, ftl->zone_size * 2, GFP_KERNEL)) {
		FUNC9(zone->lba_to_phys_table);
		return -ENOMEM;
	}

	/* Now scan the zone */
	for (block = 0 ; block < ftl->zone_size ; block++) {

		/* Skip blocks till the CIS (including) */
		if (zone_num == 0 && block <= ftl->cis_block)
			continue;

		/* Read the oob of first sector */
		if (FUNC18(ftl, zone_num, block, 0, NULL, &oob)) {
			FUNC5(&zone->free_sectors);
			FUNC9(zone->lba_to_phys_table);
			return -EIO;
		}

		/* Test to see if block is erased. It is enough to test
			first sector, because erase happens in one shot */
		if (FUNC12(&oob)) {
			FUNC6(&zone->free_sectors,
				(unsigned char *)&block, 2);
			continue;
		}

		/* If block is marked as bad, skip it */
		/* This assumes we can trust first sector*/
		/* However the way the block valid status is defined, ensures
			very low probability of failure here */
		if (!FUNC13(&oob)) {
			FUNC1("PH %04d <-> <marked bad>", block);
			continue;
		}


		lba = FUNC17(&oob);

		/* Invalid LBA means that block is damaged. */
		/* We can try to erase it, or mark it as bad, but
			lets leave that to recovery application */
		if (lba == -2 || lba >= ftl->max_lba) {
			FUNC1("PH %04d <-> LBA %04d(bad)", block, lba);
			continue;
		}


		/* If there is no collision,
			just put the sector in the FTL table */
		if (zone->lba_to_phys_table[lba] < 0) {
			FUNC2("PH %04d <-> LBA %04d", block, lba);
			zone->lba_to_phys_table[lba] = block;
			continue;
		}

		FUNC16("collision"
			" of LBA %d between blocks %d and %d in zone %d",
			lba, zone->lba_to_phys_table[lba], block, zone_num);

		/* Test that this block is valid*/
		if (FUNC14(ftl, zone_num, block))
			continue;

		/* Test now the old block */
		if (FUNC14(ftl, zone_num,
					zone->lba_to_phys_table[lba])) {
			zone->lba_to_phys_table[lba] = block;
			continue;
		}

		/* If both blocks are valid and share same LBA, it means that
			they hold different versions of same data. It not
			known which is more recent, thus just erase one of them
		*/
		FUNC16("both blocks are valid, erasing the later");
		FUNC15(ftl, zone_num, block, 1);
	}

	FUNC1("zone initialized");
	zone->initialized = 1;

	/* No free sectors, means that the zone is heavily damaged, write won't
		work, but it can still can be (partially) read */
	if (!FUNC7(&zone->free_sectors)) {
		FUNC16("no free blocks in zone %d", zone_num);
		return 0;
	}

	/* Randomize first block we write to */
	FUNC3(&i, 2);
	i %= (FUNC7(&zone->free_sectors) / 2);

	while (i--) {
		len = FUNC8(&zone->free_sectors,
					(unsigned char *)&block, 2);
		FUNC0(len != 2);
		FUNC6(&zone->free_sectors, (const unsigned char *)&block, 2);
	}
	return 0;
}
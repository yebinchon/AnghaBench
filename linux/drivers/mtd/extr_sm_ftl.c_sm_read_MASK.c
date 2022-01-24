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
struct sm_ftl {int cache_zone; int cache_block; int /*<<< orphan*/  mutex; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;
struct ftl_zone {int* lba_to_phys_table; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct ftl_zone*) ; 
 int FUNC1 (struct ftl_zone*) ; 
 int /*<<< orphan*/  SM_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sm_ftl*,unsigned long,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sm_ftl*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sm_ftl*,char*,int) ; 
 struct ftl_zone* FUNC8 (struct sm_ftl*,int) ; 
 scalar_t__ FUNC9 (struct sm_ftl*,int,int,int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct mtd_blktrans_dev *dev,
		   unsigned long sect_no, char *buf)
{
	struct sm_ftl *ftl = dev->priv;
	struct ftl_zone *zone;
	int error = 0, in_cache = 0;
	int zone_num, block, boffset;

	FUNC5(ftl, sect_no << 9, &zone_num, &block, &boffset);
	FUNC3(&ftl->mutex);


	zone = FUNC8(ftl, zone_num);
	if (FUNC0(zone)) {
		error = FUNC1(zone);
		goto unlock;
	}

	/* Have to look at cache first */
	if (ftl->cache_zone == zone_num && ftl->cache_block == block) {
		in_cache = 1;
		if (!FUNC6(ftl, buf, boffset))
			goto unlock;
	}

	/* Translate the block and return if doesn't exist in the table */
	block = zone->lba_to_phys_table[block];

	if (block == -1) {
		FUNC2(buf, 0xFF, SM_SECTOR_SIZE);
		goto unlock;
	}

	if (FUNC9(ftl, zone_num, block, boffset, buf, NULL)) {
		error = -EIO;
		goto unlock;
	}

	if (in_cache)
		FUNC7(ftl, buf, boffset);
unlock:
	FUNC4(&ftl->mutex);
	return error;
}
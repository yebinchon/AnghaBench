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
typedef  scalar_t__ uint16_t ;
struct sm_ftl {scalar_t__ cis_block; int /*<<< orphan*/  readonly; scalar_t__ unstable; int /*<<< orphan*/  block_size; TYPE_1__* trans; struct ftl_zone* zones; } ;
struct mtd_info {int dummy; } ;
struct ftl_zone {int /*<<< orphan*/  free_sectors; } ;
struct erase_info {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  block ;
struct TYPE_2__ {struct mtd_info* mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 scalar_t__ FUNC2 (struct mtd_info*,struct erase_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sm_ftl*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sm_ftl*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct sm_ftl *ftl, int zone_num, uint16_t block,
			  int put_free)
{
	struct ftl_zone *zone = &ftl->zones[zone_num];
	struct mtd_info *mtd = ftl->trans->mtd;
	struct erase_info erase;

	erase.addr = FUNC4(ftl, zone_num, block, 0);
	erase.len = ftl->block_size;

	if (ftl->unstable)
		return -EIO;

	FUNC0(ftl->readonly);

	if (zone_num == 0 && (block == ftl->cis_block || block == 0)) {
		FUNC5("attempted to erase the CIS!");
		return -EIO;
	}

	if (FUNC2(mtd, &erase)) {
		FUNC5("erase of block %d in zone %d failed",
							block, zone_num);
		goto error;
	}

	if (put_free)
		FUNC1(&zone->free_sectors,
			(const unsigned char *)&block, sizeof(block));

	return 0;
error:
	FUNC3(ftl, zone_num, block);
	return -EIO;
}
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
typedef  int /*<<< orphan*/  uint8_t ;
struct sm_oob {int dummy; } ;
struct sm_ftl {int cis_block; scalar_t__ smallpagenand; scalar_t__ unstable; int /*<<< orphan*/  readonly; TYPE_1__* trans; } ;
struct mtd_oob_ops {scalar_t__ oobretlen; scalar_t__ retlen; void* oobbuf; scalar_t__ ooblen; scalar_t__ ooboffs; int /*<<< orphan*/ * datbuf; scalar_t__ len; int /*<<< orphan*/  mode; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  MTD_OPS_PLACE_OOB ; 
 int /*<<< orphan*/  MTD_OPS_RAW ; 
 scalar_t__ SM_OOB_SIZE ; 
 scalar_t__ SM_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 
 int /*<<< orphan*/  FUNC4 (struct sm_ftl*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sm_ftl*) ; 

__attribute__((used)) static int FUNC6(struct sm_ftl *ftl,
			   int zone, int block, int boffset,
			   uint8_t *buffer, struct sm_oob *oob)
{
	struct mtd_oob_ops ops;
	struct mtd_info *mtd = ftl->trans->mtd;
	int ret;

	FUNC0(ftl->readonly);

	if (zone == 0 && (block == ftl->cis_block || block == 0)) {
		FUNC2("attempted to write the CIS!");
		return -EIO;
	}

	if (ftl->unstable)
		return -EIO;

	ops.mode = ftl->smallpagenand ? MTD_OPS_RAW : MTD_OPS_PLACE_OOB;
	ops.len = SM_SECTOR_SIZE;
	ops.datbuf = buffer;
	ops.ooboffs = 0;
	ops.ooblen = SM_OOB_SIZE;
	ops.oobbuf = (void *)oob;

	ret = FUNC3(mtd, FUNC4(ftl, zone, block, boffset), &ops);

	/* Now we assume that hardware will catch write bitflip errors */

	if (ret) {
		FUNC2("write to block %d at zone %d, failed with error %d",
			block, zone, ret);

		FUNC5(ftl);
		return ret;
	}

	/* This should never happen, unless there is a bug in the driver */
	FUNC1(ops.oobretlen != SM_OOB_SIZE);
	FUNC1(buffer && ops.retlen != SM_SECTOR_SIZE);

	return 0;
}
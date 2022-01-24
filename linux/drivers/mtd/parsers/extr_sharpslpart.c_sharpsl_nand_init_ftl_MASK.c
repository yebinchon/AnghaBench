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
typedef  int /*<<< orphan*/  u8 ;
struct sharpsl_ftl {unsigned int logmax; unsigned int* log2phy; } ;
struct mtd_info {int erasesize; int /*<<< orphan*/  oobsize; } ;
typedef  int loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SHARPSL_FTL_PART_SIZE ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mtd_info*,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct mtd_info*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mtd_info *mtd, struct sharpsl_ftl *ftl)
{
	unsigned int block_num, log_num, phymax;
	loff_t block_adr;
	u8 *oob;
	int i, ret;

	oob = FUNC2(mtd->oobsize, GFP_KERNEL);
	if (!oob)
		return -ENOMEM;

	phymax = FUNC4(SHARPSL_FTL_PART_SIZE, mtd);

	/* FTL reserves 5% of the blocks + 1 spare  */
	ftl->logmax = ((phymax * 95) / 100) - 1;

	ftl->log2phy = FUNC1(ftl->logmax, sizeof(*ftl->log2phy),
				     GFP_KERNEL);
	if (!ftl->log2phy) {
		ret = -ENOMEM;
		goto exit;
	}

	/* initialize ftl->log2phy */
	for (i = 0; i < ftl->logmax; i++)
		ftl->log2phy[i] = UINT_MAX;

	/* create physical-logical table */
	for (block_num = 0; block_num < phymax; block_num++) {
		block_adr = (loff_t)block_num * mtd->erasesize;

		if (FUNC3(mtd, block_adr))
			continue;

		if (FUNC7(mtd, block_adr, oob))
			continue;

		/* get logical block */
		log_num = FUNC6(oob);

		/* cut-off errors and skip the out-of-range values */
		if (log_num > 0 && log_num < ftl->logmax) {
			if (ftl->log2phy[log_num] == UINT_MAX)
				ftl->log2phy[log_num] = block_num;
		}
	}

	FUNC5("Sharp SL FTL: %d blocks used (%d logical, %d reserved)\n",
		phymax, ftl->logmax, phymax - ftl->logmax);

	ret = 0;
exit:
	FUNC0(oob);
	return ret;
}
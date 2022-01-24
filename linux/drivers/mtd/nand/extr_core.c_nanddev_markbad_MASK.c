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
struct nand_pos {int dummy; } ;
struct nand_device {TYPE_2__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  badblocks; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;
struct TYPE_4__ {int (* markbad ) (struct nand_device*,struct nand_pos const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_BBT_BLOCK_WORN ; 
 int /*<<< orphan*/  FUNC0 (struct nand_device*) ; 
 unsigned int FUNC1 (struct nand_device*,struct nand_pos const*) ; 
 int FUNC2 (struct nand_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nand_device*) ; 
 scalar_t__ FUNC4 (struct nand_device*,struct nand_pos const*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_device*,struct nand_pos const*) ; 
 struct mtd_info* FUNC6 (struct nand_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct nand_device*,struct nand_pos const*) ; 

int FUNC9(struct nand_device *nand, const struct nand_pos *pos)
{
	struct mtd_info *mtd = FUNC6(nand);
	unsigned int entry;
	int ret = 0;

	if (FUNC4(nand, pos))
		return 0;

	ret = nand->ops->markbad(nand, pos);
	if (ret)
		FUNC7("failed to write BBM to block @%llx (err = %d)\n",
			FUNC5(nand, pos), ret);

	if (!FUNC0(nand))
		goto out;

	entry = FUNC1(nand, pos);
	ret = FUNC2(nand, entry, NAND_BBT_BLOCK_WORN);
	if (ret)
		goto out;

	ret = FUNC3(nand);

out:
	if (!ret)
		mtd->ecc_stats.badblocks++;

	return ret;
}
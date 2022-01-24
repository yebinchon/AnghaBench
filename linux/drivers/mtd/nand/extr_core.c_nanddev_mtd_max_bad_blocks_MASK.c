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
struct nand_pos {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_bad_eraseblocks_per_lun; } ;
struct nand_device {TYPE_1__ memorg; } ;
struct mtd_info {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int ENOTSUPP ; 
 struct nand_device* FUNC0 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_device*,scalar_t__,struct nand_pos*) ; 
 scalar_t__ FUNC2 (struct nand_pos*,struct nand_pos*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_device*,struct nand_pos*) ; 

int FUNC4(struct mtd_info *mtd, loff_t offs, size_t len)
{
	struct nand_device *nand = FUNC0(mtd);
	struct nand_pos pos, end;
	unsigned int max_bb = 0;

	if (!nand->memorg.max_bad_eraseblocks_per_lun)
		return -ENOTSUPP;

	FUNC1(nand, offs, &pos);
	FUNC1(nand, offs + len, &end);

	for (FUNC1(nand, offs, &pos);
	     FUNC2(&pos, &end) < 0;
	     FUNC3(nand, &pos))
		max_bb += nand->memorg.max_bad_eraseblocks_per_lun;

	return max_bb;
}
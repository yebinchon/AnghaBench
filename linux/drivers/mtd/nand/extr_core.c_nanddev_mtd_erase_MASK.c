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
struct nand_pos {int dummy; } ;
struct nand_device {int dummy; } ;
struct mtd_info {int dummy; } ;
struct erase_info {int /*<<< orphan*/  fail_addr; scalar_t__ len; scalar_t__ addr; } ;

/* Variables and functions */
 struct nand_device* FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct nand_device*,struct nand_pos*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_device*,scalar_t__,struct nand_pos*) ; 
 scalar_t__ FUNC3 (struct nand_pos*,struct nand_pos*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_device*,struct nand_pos*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_device*,struct nand_pos*) ; 

int FUNC6(struct mtd_info *mtd, struct erase_info *einfo)
{
	struct nand_device *nand = FUNC0(mtd);
	struct nand_pos pos, last;
	int ret;

	FUNC2(nand, einfo->addr, &pos);
	FUNC2(nand, einfo->addr + einfo->len - 1, &last);
	while (FUNC3(&pos, &last) <= 0) {
		ret = FUNC1(nand, &pos);
		if (ret) {
			einfo->fail_addr = FUNC5(nand, &pos);

			return ret;
		}

		FUNC4(nand, &pos);
	}

	return 0;
}
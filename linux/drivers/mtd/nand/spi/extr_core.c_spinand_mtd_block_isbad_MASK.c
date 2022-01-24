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
struct spinand_device {int /*<<< orphan*/  lock; } ;
struct nand_pos {int dummy; } ;
struct nand_device {int dummy; } ;
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct nand_device* FUNC0 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct spinand_device* FUNC3 (struct nand_device*) ; 
 int FUNC4 (struct nand_device*,struct nand_pos*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_device*,int /*<<< orphan*/ ,struct nand_pos*) ; 

__attribute__((used)) static int FUNC6(struct mtd_info *mtd, loff_t offs)
{
	struct nand_device *nand = FUNC0(mtd);
	struct spinand_device *spinand = FUNC3(nand);
	struct nand_pos pos;
	int ret;

	FUNC5(nand, offs, &pos);
	FUNC1(&spinand->lock);
	ret = FUNC4(nand, &pos);
	FUNC2(&spinand->lock);

	return ret;
}
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
struct mtd_info {struct block2mtd_dev* priv; } ;
struct erase_info {size_t addr; size_t len; } ;
struct block2mtd_dev {int /*<<< orphan*/  write_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct block2mtd_dev*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *mtd, struct erase_info *instr)
{
	struct block2mtd_dev *dev = mtd->priv;
	size_t from = instr->addr;
	size_t len = instr->len;
	int err;

	FUNC1(&dev->write_mutex);
	err = FUNC0(dev, from, len);
	FUNC2(&dev->write_mutex);
	if (err)
		FUNC3("erase failed err = %d\n", err);

	return err;
}
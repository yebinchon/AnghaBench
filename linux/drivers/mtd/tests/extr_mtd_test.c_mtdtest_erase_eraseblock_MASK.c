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
struct mtd_info {int erasesize; } ;
struct erase_info {int addr; int len; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct erase_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mtd_info*,struct erase_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned int) ; 

int FUNC3(struct mtd_info *mtd, unsigned int ebnum)
{
	int err;
	struct erase_info ei;
	loff_t addr = (loff_t)ebnum * mtd->erasesize;

	FUNC0(&ei, 0, sizeof(struct erase_info));
	ei.addr = addr;
	ei.len  = mtd->erasesize;

	err = FUNC1(mtd, &ei);
	if (err) {
		FUNC2("error %d while erasing EB %d\n", err, ebnum);
		return err;
	}

	return 0;
}
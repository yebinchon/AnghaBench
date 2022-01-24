#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mtd_oob_ops {scalar_t__ ooblen; scalar_t__ oobretlen; void* oobbuf; int /*<<< orphan*/ * datbuf; scalar_t__ ooboffs; scalar_t__ retlen; scalar_t__ len; int /*<<< orphan*/  mode; } ;
typedef  int loff_t ;
struct TYPE_4__ {int erasesize; scalar_t__ oobsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MTD_OPS_PLACE_OOB ; 
 void* iobuf ; 
 void* iobuf1 ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* mtd ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int,struct mtd_oob_ops*) ; 
 int FUNC3 (TYPE_1__*,int,int,void*) ; 
 int pgcnt ; 
 int pgsize ; 
 int /*<<< orphan*/  FUNC4 (char*,long long) ; 

__attribute__((used)) static int FUNC5(int ebnum)
{
	int i, ret, err = 0;
	loff_t addr = (loff_t)ebnum * mtd->erasesize;
	void *buf = iobuf;
	void *oobbuf = iobuf1;

	for (i = 0; i < pgcnt; i++) {
		FUNC0(buf, 0 , pgsize);
		ret = FUNC3(mtd, addr, pgsize, buf);
		if (ret) {
			if (!err)
				err = ret;
		}
		if (mtd->oobsize) {
			struct mtd_oob_ops ops;

			ops.mode      = MTD_OPS_PLACE_OOB;
			ops.len       = 0;
			ops.retlen    = 0;
			ops.ooblen    = mtd->oobsize;
			ops.oobretlen = 0;
			ops.ooboffs   = 0;
			ops.datbuf    = NULL;
			ops.oobbuf    = oobbuf;
			ret = FUNC2(mtd, addr, &ops);
			if ((ret && !FUNC1(ret)) ||
					ops.oobretlen != mtd->oobsize) {
				FUNC4("error: read oob failed at "
						  "%#llx\n", (long long)addr);
				if (!err)
					err = ret;
				if (!err)
					err = -EINVAL;
			}
			oobbuf += mtd->oobsize;
		}
		addr += pgsize;
		buf += pgsize;
	}

	return err;
}
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
typedef  int loff_t ;
struct TYPE_4__ {int erasesize; } ;

/* Variables and functions */
 scalar_t__* bbt ; 
 TYPE_1__* mtd ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int* offsets ; 
 int pgsize ; 
 int FUNC2 () ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  writebuf ; 

__attribute__((used)) static int FUNC5(void)
{
	int eb = FUNC2(), offs, err, len;
	loff_t addr;

	offs = offsets[eb];
	if (offs >= mtd->erasesize) {
		err = FUNC0(mtd, eb);
		if (err)
			return err;
		offs = offsets[eb] = 0;
	}
	len = FUNC3(offs);
	len = ((len + pgsize - 1) / pgsize) * pgsize;
	if (offs + len > mtd->erasesize) {
		if (bbt[eb + 1])
			len = mtd->erasesize - offs;
		else {
			err = FUNC0(mtd, eb + 1);
			if (err)
				return err;
			offsets[eb + 1] = 0;
		}
	}
	addr = (loff_t)eb * mtd->erasesize + offs;
	err = FUNC1(mtd, addr, len, writebuf);
	if (FUNC4(err))
		return err;
	offs += len;
	while (offs > mtd->erasesize) {
		offsets[eb++] = mtd->erasesize;
		offs -= mtd->erasesize;
	}
	offsets[eb] = offs;
	return 0;
}
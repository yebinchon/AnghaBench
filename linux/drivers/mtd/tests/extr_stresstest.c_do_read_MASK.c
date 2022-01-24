#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int loff_t ;
struct TYPE_3__ {int erasesize; } ;

/* Variables and functions */
 scalar_t__* bbt ; 
 TYPE_1__* mtd ; 
 int FUNC0 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  readbuf ; 

__attribute__((used)) static int FUNC4(void)
{
	int eb = FUNC1();
	int offs = FUNC3();
	int len = FUNC2(offs);
	loff_t addr;

	if (bbt[eb + 1]) {
		if (offs >= mtd->erasesize)
			offs -= mtd->erasesize;
		if (offs + len > mtd->erasesize)
			len = mtd->erasesize - offs;
	}
	addr = (loff_t)eb * mtd->erasesize + offs;
	return FUNC0(mtd, addr, len, readbuf);
}
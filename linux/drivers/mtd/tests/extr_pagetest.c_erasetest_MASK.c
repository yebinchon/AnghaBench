#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ loff_t ;
struct TYPE_5__ {scalar_t__ erasesize; } ;

/* Variables and functions */
 scalar_t__* bbt ; 
 int ebcnt ; 
 int errcnt ; 
 TYPE_1__* mtd ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int,int*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int pgsize ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rnd_state ; 
 int* twopages ; 
 int /*<<< orphan*/  writebuf ; 

__attribute__((used)) static int FUNC6(void)
{
	int err = 0, i, ebnum, ok = 1;
	loff_t addr0;

	FUNC4("erasetest\n");

	ebnum = 0;
	addr0 = 0;
	for (i = 0; i < ebcnt && bbt[i]; ++i) {
		addr0 += mtd->erasesize;
		ebnum += 1;
	}

	FUNC4("erasing block %d\n", ebnum);
	err = FUNC0(mtd, ebnum);
	if (err)
		return err;

	FUNC4("writing 1st page of block %d\n", ebnum);
	FUNC5(&rnd_state, writebuf, pgsize);
	err = FUNC2(mtd, addr0, pgsize, writebuf);
	if (err)
		return err;

	FUNC4("erasing block %d\n", ebnum);
	err = FUNC0(mtd, ebnum);
	if (err)
		return err;

	FUNC4("reading 1st page of block %d\n", ebnum);
	err = FUNC1(mtd, addr0, pgsize, twopages);
	if (err)
		return err;

	FUNC4("verifying 1st page of block %d is all 0xff\n",
	       ebnum);
	for (i = 0; i < pgsize; ++i)
		if (twopages[i] != 0xff) {
			FUNC3("verifying all 0xff failed at %d\n",
			       i);
			errcnt += 1;
			ok = 0;
			break;
		}

	if (ok && !err)
		FUNC4("erasetest ok\n");

	return err;
}
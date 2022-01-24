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
struct TYPE_3__ {int erasesize; int size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__* bbt ; 
 int ebcnt ; 
 int errcnt ; 
 unsigned char* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,int) ; 
 TYPE_1__* mtd ; 
 int FUNC3 (TYPE_1__*,int,int,unsigned char*) ; 
 int pgsize ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(void)
{
	int err = 0, i;
	loff_t addr, addr0, addrn;
	unsigned char *pp1, *pp2, *pp3, *pp4;

	FUNC5("crosstest\n");
	pp1 = FUNC0(pgsize, 4, GFP_KERNEL);
	if (!pp1)
		return -ENOMEM;
	pp2 = pp1 + pgsize;
	pp3 = pp2 + pgsize;
	pp4 = pp3 + pgsize;

	addr0 = 0;
	for (i = 0; i < ebcnt && bbt[i]; ++i)
		addr0 += mtd->erasesize;

	addrn = mtd->size;
	for (i = 0; i < ebcnt && bbt[ebcnt - i - 1]; ++i)
		addrn -= mtd->erasesize;

	/* Read 2nd-to-last page to pp1 */
	addr = addrn - pgsize - pgsize;
	err = FUNC3(mtd, addr, pgsize, pp1);
	if (err) {
		FUNC1(pp1);
		return err;
	}

	/* Read 3rd-to-last page to pp1 */
	addr = addrn - pgsize - pgsize - pgsize;
	err = FUNC3(mtd, addr, pgsize, pp1);
	if (err) {
		FUNC1(pp1);
		return err;
	}

	/* Read first page to pp2 */
	addr = addr0;
	FUNC5("reading page at %#llx\n", (long long)addr);
	err = FUNC3(mtd, addr, pgsize, pp2);
	if (err) {
		FUNC1(pp1);
		return err;
	}

	/* Read last page to pp3 */
	addr = addrn - pgsize;
	FUNC5("reading page at %#llx\n", (long long)addr);
	err = FUNC3(mtd, addr, pgsize, pp3);
	if (err) {
		FUNC1(pp1);
		return err;
	}

	/* Read first page again to pp4 */
	addr = addr0;
	FUNC5("reading page at %#llx\n", (long long)addr);
	err = FUNC3(mtd, addr, pgsize, pp4);
	if (err) {
		FUNC1(pp1);
		return err;
	}

	/* pp2 and pp4 should be the same */
	FUNC5("verifying pages read at %#llx match\n",
	       (long long)addr0);
	if (FUNC2(pp2, pp4, pgsize)) {
		FUNC4("verify failed!\n");
		errcnt += 1;
	} else if (!err)
		FUNC5("crosstest ok\n");
	FUNC1(pp1);
	return err;
}
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
typedef  size_t uint32_t ;
typedef  int loff_t ;
struct TYPE_3__ {int erasesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int errcnt ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,size_t) ; 
 TYPE_1__* mtd ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*,int,size_t,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,long long) ; 
 int /*<<< orphan*/  FUNC6 (char*,long long) ; 
 int /*<<< orphan*/  readbuf ; 
 size_t subpgsize ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  writebuf ; 

__attribute__((used)) static int FUNC8(int ebnum)
{
	uint32_t j;
	size_t read;
	int err = 0;
	loff_t addr = (loff_t)ebnum * mtd->erasesize;

	FUNC2(writebuf, 0xff, subpgsize);
	for (j = 0; j < mtd->erasesize / subpgsize; ++j) {
		FUNC0(readbuf, subpgsize);
		err = FUNC4(mtd, addr, subpgsize, &read, readbuf);
		if (FUNC7(err || read != subpgsize)) {
			if (FUNC3(err) && read == subpgsize) {
				FUNC6("ECC correction at %#llx\n",
				       (long long)addr);
				err = 0;
			} else {
				FUNC5("error: read failed at "
				       "%#llx\n", (long long)addr);
				return err ? err : -1;
			}
		}
		if (FUNC7(FUNC1(readbuf, writebuf, subpgsize))) {
			FUNC5("error: verify 0xff failed at "
			       "%#llx\n", (long long)addr);
			errcnt += 1;
		}
		addr += subpgsize;
	}

	return err;
}
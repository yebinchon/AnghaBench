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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int errcnt ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* mtd ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int,int,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,long long) ; 
 int /*<<< orphan*/  FUNC5 (char*,long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  readbuf ; 
 int /*<<< orphan*/  rnd_state ; 
 int subpgsize ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  writebuf ; 

__attribute__((used)) static int FUNC8(int ebnum)
{
	size_t read;
	int err = 0, k;
	loff_t addr = (loff_t)ebnum * mtd->erasesize;

	for (k = 1; k < 33; ++k) {
		if (addr + (subpgsize * k) > (loff_t)(ebnum + 1) * mtd->erasesize)
			break;
		FUNC6(&rnd_state, writebuf, subpgsize * k);
		FUNC0(readbuf, subpgsize * k);
		err = FUNC3(mtd, addr, subpgsize * k, &read, readbuf);
		if (FUNC7(err || read != subpgsize * k)) {
			if (FUNC2(err) && read == subpgsize * k) {
				FUNC5("ECC correction at %#llx\n",
				       (long long)addr);
				err = 0;
			} else {
				FUNC4("error: read failed at "
				       "%#llx\n", (long long)addr);
				return err ? err : -1;
			}
		}
		if (FUNC7(FUNC1(readbuf, writebuf, subpgsize * k))) {
			FUNC4("error: verify failed at %#llx\n",
			       (long long)addr);
			errcnt += 1;
		}
		addr += subpgsize * k;
	}

	return err;
}
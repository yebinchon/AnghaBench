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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int errcnt ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* mtd ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int,size_t,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,long long) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  readbuf ; 
 int /*<<< orphan*/  rnd_state ; 
 size_t subpgsize ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  writebuf ; 

__attribute__((used)) static int FUNC9(int ebnum)
{
	size_t read;
	int err = 0;
	loff_t addr = (loff_t)ebnum * mtd->erasesize;

	FUNC6(&rnd_state, writebuf, subpgsize);
	FUNC0(readbuf, subpgsize);
	err = FUNC3(mtd, addr, subpgsize, &read, readbuf);
	if (FUNC8(err || read != subpgsize)) {
		if (FUNC2(err) && read == subpgsize) {
			FUNC5("ECC correction at %#llx\n",
			       (long long)addr);
			err = 0;
		} else {
			FUNC4("error: read failed at %#llx\n",
			       (long long)addr);
			return err ? err : -1;
		}
	}
	if (FUNC8(FUNC1(readbuf, writebuf, subpgsize))) {
		FUNC4("error: verify failed at %#llx\n",
		       (long long)addr);
		FUNC5("------------- written----------------\n");
		FUNC7(writebuf);
		FUNC5("------------- read ------------------\n");
		FUNC7(readbuf);
		FUNC5("-------------------------------------\n");
		errcnt += 1;
	}

	addr += subpgsize;

	FUNC6(&rnd_state, writebuf, subpgsize);
	FUNC0(readbuf, subpgsize);
	err = FUNC3(mtd, addr, subpgsize, &read, readbuf);
	if (FUNC8(err || read != subpgsize)) {
		if (FUNC2(err) && read == subpgsize) {
			FUNC5("ECC correction at %#llx\n",
			       (long long)addr);
			err = 0;
		} else {
			FUNC4("error: read failed at %#llx\n",
			       (long long)addr);
			return err ? err : -1;
		}
	}
	if (FUNC8(FUNC1(readbuf, writebuf, subpgsize))) {
		FUNC5("error: verify failed at %#llx\n",
		       (long long)addr);
		FUNC5("------------- written----------------\n");
		FUNC7(writebuf);
		FUNC5("------------- read ------------------\n");
		FUNC7(readbuf);
		FUNC5("-------------------------------------\n");
		errcnt += 1;
	}

	return err;
}
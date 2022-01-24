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
struct mtd_oob_ops {size_t ooblen; size_t oobretlen; scalar_t__ oobbuf; int /*<<< orphan*/ * datbuf; scalar_t__ ooboffs; scalar_t__ retlen; int /*<<< orphan*/  len; int /*<<< orphan*/  mode; } ;
typedef  int loff_t ;
struct TYPE_3__ {int erasesize; int oobavail; int writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTD_OPS_AUTO_OOB ; 
 size_t bitflip_limit ; 
 int errcnt ; 
 size_t FUNC0 (int,scalar_t__,scalar_t__,size_t) ; 
 TYPE_1__* mtd ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int,struct mtd_oob_ops*) ; 
 int pgcnt ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 scalar_t__ readbuf ; 
 int /*<<< orphan*/  rnd_state ; 
 scalar_t__ writebuf ; 

__attribute__((used)) static int FUNC6(int ebnum)
{
	struct mtd_oob_ops ops;
	int err = 0;
	loff_t addr = (loff_t)ebnum * mtd->erasesize;
	size_t len = mtd->oobavail * pgcnt;
	size_t oobavail = mtd->oobavail;
	size_t bitflips;
	int i;

	FUNC5(&rnd_state, writebuf, len);
	ops.mode      = MTD_OPS_AUTO_OOB;
	ops.len       = 0;
	ops.retlen    = 0;
	ops.ooblen    = len;
	ops.oobretlen = 0;
	ops.ooboffs   = 0;
	ops.datbuf    = NULL;
	ops.oobbuf    = readbuf;

	/* read entire block's OOB at one go */
	err = FUNC2(mtd, addr, &ops);
	if (FUNC1(err))
		err = 0;

	if (err || ops.oobretlen != len) {
		FUNC3("error: readoob failed at %#llx\n",
		       (long long)addr);
		errcnt += 1;
		return err ? err : -1;
	}

	/* verify one page OOB at a time for bitflip per page limit check */
	for (i = 0; i < pgcnt; ++i, addr += mtd->writesize) {
		bitflips = FUNC0(addr, readbuf + (i * oobavail),
				      writebuf + (i * oobavail), oobavail);
		if (bitflips > bitflip_limit) {
			FUNC3("error: verify failed at %#llx\n",
			       (long long)addr);
			errcnt += 1;
			if (errcnt > 1000) {
				FUNC3("error: too many errors\n");
				return -1;
			}
		} else if (bitflips) {
			FUNC4("ignoring error as within bitflip_limit\n");
		}
	}

	return err;
}
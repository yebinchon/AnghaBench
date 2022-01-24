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
struct mtdswap_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  mtd; } ;
struct mtd_oob_ops {int /*<<< orphan*/  ooblen; int /*<<< orphan*/  oobretlen; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 

__attribute__((used)) static int FUNC3(struct mtdswap_dev *d, loff_t from,
			struct mtd_oob_ops *ops)
{
	int ret = FUNC2(d->mtd, from, ops);

	if (FUNC1(ret))
		return ret;

	if (ret) {
		FUNC0(d->dev, "Read OOB failed %d for block at %08llx\n",
			ret, from);
		return ret;
	}

	if (ops->oobretlen < ops->ooblen) {
		FUNC0(d->dev, "Read OOB return short read (%zd bytes not "
			"%zd) for block at %08llx\n",
			ops->oobretlen, ops->ooblen, from);
		return -EIO;
	}

	return 0;
}
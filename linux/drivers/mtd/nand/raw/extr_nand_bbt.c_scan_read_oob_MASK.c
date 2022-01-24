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
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {int dummy; } ;
struct mtd_oob_ops {int len; int /*<<< orphan*/ * oobbuf; int /*<<< orphan*/ * datbuf; scalar_t__ ooblen; scalar_t__ ooboffs; int /*<<< orphan*/  mode; } ;
struct mtd_info {scalar_t__ writesize; scalar_t__ oobsize; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTD_OPS_PLACE_OOB ; 
 int FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *this, uint8_t *buf, loff_t offs,
			 size_t len)
{
	struct mtd_info *mtd = FUNC4(this);
	struct mtd_oob_ops ops;
	int res, ret = 0;

	ops.mode = MTD_OPS_PLACE_OOB;
	ops.ooboffs = 0;
	ops.ooblen = mtd->oobsize;

	while (len > 0) {
		ops.datbuf = buf;
		ops.len = FUNC0(len, (size_t)mtd->writesize);
		ops.oobbuf = buf + ops.len;

		res = FUNC3(mtd, offs, &ops);
		if (res) {
			if (!FUNC1(res))
				return res;
			else if (FUNC2(res) || !ret)
				ret = res;
		}

		buf += mtd->oobsize + mtd->writesize;
		len -= mtd->writesize;
		offs += mtd->writesize;
	}
	return ret;
}
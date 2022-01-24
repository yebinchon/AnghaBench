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
struct onenand_chip {int dummy; } ;
struct mtd_oob_ops {int mode; scalar_t__ datbuf; } ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FL_READING ; 
#define  MTD_OPS_AUTO_OOB 130 
#define  MTD_OPS_PLACE_OOB 129 
#define  MTD_OPS_RAW 128 
 scalar_t__ FUNC0 (struct onenand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC6(struct mtd_info *mtd, loff_t from,
			    struct mtd_oob_ops *ops)
{
	struct onenand_chip *this = mtd->priv;
	int ret;

	switch (ops->mode) {
	case MTD_OPS_PLACE_OOB:
	case MTD_OPS_AUTO_OOB:
		break;
	case MTD_OPS_RAW:
		/* Not implemented yet */
	default:
		return -EINVAL;
	}

	FUNC1(mtd, FL_READING);
	if (ops->datbuf)
		ret = FUNC0(this) ?
			FUNC2(mtd, from, ops) :
			FUNC4(mtd, from, ops);
	else
		ret = FUNC3(mtd, from, ops);
	FUNC5(mtd);

	return ret;
}
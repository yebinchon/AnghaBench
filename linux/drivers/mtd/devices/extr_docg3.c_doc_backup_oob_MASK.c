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
struct mtd_oob_ops {int ooblen; scalar_t__ mode; int oobretlen; int /*<<< orphan*/  oobbuf; } ;
struct docg3 {int oob_autoecc; int /*<<< orphan*/  oob_write_buf; int /*<<< orphan*/  oob_write_ofs; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int DOC_LAYOUT_OOB_SIZE ; 
 int EINVAL ; 
 scalar_t__ MTD_OPS_AUTO_OOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mtd_oob_ops*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct docg3 *docg3, loff_t to,
			  struct mtd_oob_ops *ops)
{
	int ooblen = ops->ooblen, autoecc;

	if (ooblen != DOC_LAYOUT_OOB_SIZE)
		return -EINVAL;
	autoecc = FUNC1(ops);
	if (autoecc < 0)
		return autoecc;

	docg3->oob_write_ofs = to;
	docg3->oob_autoecc = autoecc;
	if (ops->mode == MTD_OPS_AUTO_OOB) {
		FUNC0(docg3->oob_write_buf, ops->oobbuf);
		ops->oobretlen = 8;
	} else {
		FUNC2(docg3->oob_write_buf, ops->oobbuf, DOC_LAYOUT_OOB_SIZE);
		ops->oobretlen = DOC_LAYOUT_OOB_SIZE;
	}
	return 0;
}
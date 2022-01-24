#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cmd_ctrl; int /*<<< orphan*/  select_chip; int /*<<< orphan*/  cmdfunc; } ;
struct nand_chip {TYPE_1__ legacy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct nand_chip *chip)
{
	/*
	 * ->legacy.cmdfunc() is legacy and will only be used if ->exec_op() is
	 * not populated.
	 */
	if (FUNC0(chip))
		return 0;

	/*
	 * Default functions assigned for ->legacy.cmdfunc() and
	 * ->legacy.select_chip() both expect ->legacy.cmd_ctrl() to be
	 *  populated.
	 */
	if ((!chip->legacy.cmdfunc || !chip->legacy.select_chip) &&
	    !chip->legacy.cmd_ctrl) {
		FUNC1("->legacy.cmd_ctrl() should be provided\n");
		return -EINVAL;
	}

	return 0;
}
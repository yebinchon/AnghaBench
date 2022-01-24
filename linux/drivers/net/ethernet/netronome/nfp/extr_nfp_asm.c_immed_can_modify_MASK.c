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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IMMED_WIDTH_ALL ; 
 int /*<<< orphan*/  OP_IMMED_INV ; 
 int /*<<< orphan*/  OP_IMMED_SHIFT ; 
 int /*<<< orphan*/  OP_IMMED_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static bool FUNC2(u64 instr)
{
	if (FUNC0(OP_IMMED_INV, instr) ||
	    FUNC0(OP_IMMED_SHIFT, instr) ||
	    FUNC0(OP_IMMED_WIDTH, instr) != IMMED_WIDTH_ALL) {
		FUNC1("Can't decode/encode immed!\n");
		return false;
	}
	return true;
}
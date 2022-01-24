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
struct nand_subop {TYPE_1__* instrs; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ NAND_OP_ADDR_INSTR ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct nand_subop const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_subop const*,unsigned int) ; 

unsigned int FUNC3(const struct nand_subop *subop,
					   unsigned int instr_idx)
{
	if (FUNC0(!FUNC2(subop, instr_idx) ||
		    subop->instrs[instr_idx].type != NAND_OP_ADDR_INSTR))
		return 0;

	return FUNC1(subop, instr_idx);
}
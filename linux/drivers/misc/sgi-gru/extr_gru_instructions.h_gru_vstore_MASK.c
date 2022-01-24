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
struct gru_instruction {long baddr0; unsigned long nelem; unsigned long op1_stride; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  IAA_RAM ; 
 int /*<<< orphan*/  OP_VSTORE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gru_instruction*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(void *cb, unsigned long mem_addr,
		unsigned int tri0, unsigned char xtype, unsigned long nelem,
		unsigned long stride, unsigned long hints)
{
	struct gru_instruction *ins = (void *)cb;

	ins->baddr0 = (long)mem_addr;
	ins->nelem = nelem;
	ins->op1_stride = stride;
	FUNC2(ins, FUNC1(OP_VSTORE, 0, xtype, IAA_RAM, 0,
					tri0, FUNC0(hints)));
}
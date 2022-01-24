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
struct gru_instruction {long baddr0; int nelem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  EOP_XR_CSWAP ; 
 int /*<<< orphan*/  IAA_RAM ; 
 int /*<<< orphan*/  OP_GAMXR ; 
 int /*<<< orphan*/  XTYPE_DW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gru_instruction*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(void *cb, unsigned long src,
		unsigned int tri0, unsigned long hints)
{
	struct gru_instruction *ins = (void *)cb;

	ins->baddr0 = (long)src;
	ins->nelem = 4;
	FUNC2(ins, FUNC1(OP_GAMXR, EOP_XR_CSWAP, XTYPE_DW,
				 IAA_RAM, 0, 0, FUNC0(hints)));
}
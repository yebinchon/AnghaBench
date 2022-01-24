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
struct mvpp2_prs_entry {int* sram; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS ; 
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_OFFS ; 
 int MVPP2_PRS_SRAM_SHIFT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_SHIFT_OFFS ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_SHIFT_SIGN_BIT ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct mvpp2_prs_entry *pe, int shift,
				     unsigned int op)
{
	/* Set sign */
	if (shift < 0) {
		FUNC2(pe, MVPP2_PRS_SRAM_SHIFT_SIGN_BIT, 1);
		shift = 0 - shift;
	} else {
		FUNC1(pe, MVPP2_PRS_SRAM_SHIFT_SIGN_BIT, 1);
	}

	/* Set value */
	pe->sram[FUNC0(MVPP2_PRS_SRAM_SHIFT_OFFS)] |=
		shift & MVPP2_PRS_SRAM_SHIFT_MASK;

	/* Reset and set operation */
	FUNC1(pe, MVPP2_PRS_SRAM_OP_SEL_SHIFT_OFFS,
				  MVPP2_PRS_SRAM_OP_SEL_SHIFT_MASK);
	FUNC2(pe, MVPP2_PRS_SRAM_OP_SEL_SHIFT_OFFS, op);

	/* Set base offset as current */
	FUNC1(pe, MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS, 1);
}
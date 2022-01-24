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
struct mvpp2_prs_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS ; 
 unsigned int MVPP2_PRS_SRAM_OP_SEL_UDF_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_UDF_OFFS ; 
 int MVPP2_PRS_SRAM_UDF_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_UDF_OFFS ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_UDF_SIGN_BIT ; 
 int MVPP2_PRS_SRAM_UDF_TYPE_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_UDF_TYPE_OFFS ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct mvpp2_prs_entry *pe,
				      unsigned int type, int offset,
				      unsigned int op)
{
	/* Set sign */
	if (offset < 0) {
		FUNC1(pe, MVPP2_PRS_SRAM_UDF_SIGN_BIT, 1);
		offset = 0 - offset;
	} else {
		FUNC0(pe, MVPP2_PRS_SRAM_UDF_SIGN_BIT, 1);
	}

	/* Set value */
	FUNC0(pe, MVPP2_PRS_SRAM_UDF_OFFS,
				  MVPP2_PRS_SRAM_UDF_MASK);
	FUNC1(pe, MVPP2_PRS_SRAM_UDF_OFFS,
				offset & MVPP2_PRS_SRAM_UDF_MASK);

	/* Set offset type */
	FUNC0(pe, MVPP2_PRS_SRAM_UDF_TYPE_OFFS,
				  MVPP2_PRS_SRAM_UDF_TYPE_MASK);
	FUNC1(pe, MVPP2_PRS_SRAM_UDF_TYPE_OFFS, type);

	/* Set offset operation */
	FUNC0(pe, MVPP2_PRS_SRAM_OP_SEL_UDF_OFFS,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_MASK);
	FUNC1(pe, MVPP2_PRS_SRAM_OP_SEL_UDF_OFFS,
				op & MVPP2_PRS_SRAM_OP_SEL_UDF_MASK);

	/* Set base offset as current */
	FUNC0(pe, MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS, 1);
}
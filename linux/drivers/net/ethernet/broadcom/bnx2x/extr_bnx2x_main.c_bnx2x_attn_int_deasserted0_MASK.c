#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ pmf; } ;
struct TYPE_3__ {int aeu_int_mask; } ;
struct bnx2x {int /*<<< orphan*/  link_params; TYPE_2__ port; TYPE_1__ link_vars; } ;

/* Variables and functions */
 int AEU_INPUTS_ATTN_BITS_SPIO5 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct bnx2x*) ; 
 int HW_INTERRUPT_ASSERT_SET_0 ; 
 int MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 ; 
 int MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 ; 
 int FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*) ; 

__attribute__((used)) static void FUNC10(struct bnx2x *bp, u32 attn)
{
	int port = FUNC1(bp);
	int reg_offset;
	u32 val;

	reg_offset = (port ? MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 :
			     MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0);

	if (attn & AEU_INPUTS_ATTN_BITS_SPIO5) {

		val = FUNC2(bp, reg_offset);
		val &= ~AEU_INPUTS_ATTN_BITS_SPIO5;
		FUNC3(bp, reg_offset, val);

		FUNC0("SPIO5 hw attention\n");

		/* Fan failure attention */
		FUNC7(&bp->link_params);
		FUNC5(bp);
	}

	if ((attn & bp->link_vars.aeu_int_mask) && bp->port.pmf) {
		FUNC4(bp);
		FUNC6(&bp->link_params);
		FUNC9(bp);
	}

	if (attn & HW_INTERRUPT_ASSERT_SET_0) {

		val = FUNC2(bp, reg_offset);
		val &= ~(attn & HW_INTERRUPT_ASSERT_SET_0);
		FUNC3(bp, reg_offset, val);

		FUNC0("FATAL HW block attention set0 0x%x\n",
			  (u32)(attn & HW_INTERRUPT_ASSERT_SET_0));
		FUNC8();
	}
}
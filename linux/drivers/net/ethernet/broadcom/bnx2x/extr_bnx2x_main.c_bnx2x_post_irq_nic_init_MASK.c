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
typedef  int /*<<< orphan*/  u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int AEU_INPUTS_ATTN_BITS_SPIO5 ; 
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 ; 
 int FUNC1 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct bnx2x *bp, u32 load_code)
{
	FUNC3(bp);
	FUNC4(bp, load_code);
	FUNC6(bp);
	FUNC7(bp);

	/* flush all before enabling interrupts */
	FUNC8();

	FUNC5(bp);

	/* Check for SPIO5 */
	FUNC2(bp,
		FUNC1(bp, MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 + FUNC0(bp)*4) &
				   AEU_INPUTS_ATTN_BITS_SPIO5);
}
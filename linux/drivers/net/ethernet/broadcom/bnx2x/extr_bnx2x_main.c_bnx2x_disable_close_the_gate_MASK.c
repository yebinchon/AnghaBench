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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK ; 
 int MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK ; 
 int MISC_REG_AEU_GENERAL_MASK ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_1 ; 
 int /*<<< orphan*/  NETIF_MSG_IFDOWN ; 
 int FUNC3 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int,int) ; 

void FUNC5(struct bnx2x *bp)
{
	u32 val;

	FUNC2(NETIF_MSG_IFDOWN, "Disabling \"close the gates\"\n");

	if (FUNC1(bp)) {
		int port = FUNC0(bp);
		u32 addr = port ? MISC_REG_AEU_MASK_ATTN_FUNC_1 :
			MISC_REG_AEU_MASK_ATTN_FUNC_0;

		val = FUNC3(bp, addr);
		val &= ~(0x300);
		FUNC4(bp, addr, val);
	} else {
		val = FUNC3(bp, MISC_REG_AEU_GENERAL_MASK);
		val &= ~(MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK |
			 MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK);
		FUNC4(bp, MISC_REG_AEU_GENERAL_MASK, val);
	}
}
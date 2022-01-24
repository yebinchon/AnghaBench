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
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int HC_CONFIG_0_REG_BLOCK_DISABLE_0 ; 
 int HC_CONFIG_1_REG_BLOCK_DISABLE_1 ; 
 int /*<<< orphan*/  HC_REG_CONFIG_0 ; 
 int /*<<< orphan*/  HC_REG_CONFIG_1 ; 
 int IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE ; 
 int /*<<< orphan*/  IGU_REG_BLOCK_CONFIGURATION ; 
 int NETIF_MSG_HW ; 
 int NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  PXP_REG_HST_DISCARD_DOORBELLS ; 
 int /*<<< orphan*/  PXP_REG_HST_DISCARD_INTERNAL_WRITES ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp, bool close)
{
	u32 val;

	/* Gates #2 and #4a are closed/opened for "not E1" only */
	if (!FUNC0(bp)) {
		/* #4 */
		FUNC4(bp, PXP_REG_HST_DISCARD_DOORBELLS, !!close);
		/* #2 */
		FUNC4(bp, PXP_REG_HST_DISCARD_INTERNAL_WRITES, !!close);
	}

	/* #3 */
	if (FUNC1(bp)) {
		/* Prevent interrupts from HC on both ports */
		val = FUNC3(bp, HC_REG_CONFIG_1);
		FUNC4(bp, HC_REG_CONFIG_1,
		       (!close) ? (val | HC_CONFIG_1_REG_BLOCK_DISABLE_1) :
		       (val & ~(u32)HC_CONFIG_1_REG_BLOCK_DISABLE_1));

		val = FUNC3(bp, HC_REG_CONFIG_0);
		FUNC4(bp, HC_REG_CONFIG_0,
		       (!close) ? (val | HC_CONFIG_0_REG_BLOCK_DISABLE_0) :
		       (val & ~(u32)HC_CONFIG_0_REG_BLOCK_DISABLE_0));
	} else {
		/* Prevent incoming interrupts in IGU */
		val = FUNC3(bp, IGU_REG_BLOCK_CONFIGURATION);

		FUNC4(bp, IGU_REG_BLOCK_CONFIGURATION,
		       (!close) ?
		       (val | IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE) :
		       (val & ~(u32)IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE));
	}

	FUNC2(NETIF_MSG_HW | NETIF_MSG_IFUP, "%s gates #2, #3 and #4\n",
		close ? "closing" : "opening");
}
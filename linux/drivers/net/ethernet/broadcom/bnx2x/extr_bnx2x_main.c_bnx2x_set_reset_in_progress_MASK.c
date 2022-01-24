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
 int /*<<< orphan*/  BNX2X_PATH0_RST_IN_PROG_BIT ; 
 int /*<<< orphan*/  BNX2X_PATH1_RST_IN_PROG_BIT ; 
 int /*<<< orphan*/  BNX2X_RECOVERY_GLOB_REG ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_RECOVERY_REG ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 

void FUNC5(struct bnx2x *bp)
{
	u32 val;
	u32 bit = FUNC0(bp) ?
		BNX2X_PATH1_RST_IN_PROG_BIT : BNX2X_PATH0_RST_IN_PROG_BIT;
	FUNC3(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
	val = FUNC1(bp, BNX2X_RECOVERY_GLOB_REG);

	/* Set the bit */
	val |= bit;
	FUNC2(bp, BNX2X_RECOVERY_GLOB_REG, val);
	FUNC4(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
}
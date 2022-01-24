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
 int BNX2X_GLOBAL_RESET_BIT ; 
 int /*<<< orphan*/  BNX2X_RECOVERY_GLOB_REG ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_RECOVERY_REG ; 
 int FUNC0 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp)
{
	u32 val;
	FUNC2(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
	val = FUNC0(bp, BNX2X_RECOVERY_GLOB_REG);
	FUNC1(bp, BNX2X_RECOVERY_GLOB_REG, val & (~BNX2X_GLOBAL_RESET_BIT));
	FUNC3(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
}
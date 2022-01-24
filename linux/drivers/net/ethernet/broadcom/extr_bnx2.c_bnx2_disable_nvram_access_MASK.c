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
struct bnx2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_NVM_ACCESS_ENABLE ; 
 int BNX2_NVM_ACCESS_ENABLE_EN ; 
 int BNX2_NVM_ACCESS_ENABLE_WR_EN ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct bnx2 *bp)
{
	u32 val;

	val = FUNC0(bp, BNX2_NVM_ACCESS_ENABLE);
	/* Disable both bits, even after read. */
	FUNC1(bp, BNX2_NVM_ACCESS_ENABLE,
		val & ~(BNX2_NVM_ACCESS_ENABLE_EN |
			BNX2_NVM_ACCESS_ENABLE_WR_EN));
}
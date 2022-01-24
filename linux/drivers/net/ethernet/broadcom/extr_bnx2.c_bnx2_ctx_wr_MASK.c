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
struct bnx2 {int /*<<< orphan*/  indirect_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 int /*<<< orphan*/  BNX2_CTX_CTX_CTRL ; 
 int BNX2_CTX_CTX_CTRL_WRITE_REQ ; 
 int /*<<< orphan*/  BNX2_CTX_CTX_DATA ; 
 int /*<<< orphan*/  BNX2_CTX_DATA ; 
 int /*<<< orphan*/  BNX2_CTX_DATA_ADR ; 
 int FUNC1 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct bnx2 *bp, u32 cid_addr, u32 offset, u32 val)
{
	unsigned long flags;

	offset += cid_addr;
	FUNC3(&bp->indirect_lock, flags);
	if (FUNC0(bp) == BNX2_CHIP_5709) {
		int i;

		FUNC2(bp, BNX2_CTX_CTX_DATA, val);
		FUNC2(bp, BNX2_CTX_CTX_CTRL,
			offset | BNX2_CTX_CTX_CTRL_WRITE_REQ);
		for (i = 0; i < 5; i++) {
			val = FUNC1(bp, BNX2_CTX_CTX_CTRL);
			if ((val & BNX2_CTX_CTX_CTRL_WRITE_REQ) == 0)
				break;
			FUNC5(5);
		}
	} else {
		FUNC2(bp, BNX2_CTX_DATA_ADR, offset);
		FUNC2(bp, BNX2_CTX_DATA, val);
	}
	FUNC4(&bp->indirect_lock, flags);
}
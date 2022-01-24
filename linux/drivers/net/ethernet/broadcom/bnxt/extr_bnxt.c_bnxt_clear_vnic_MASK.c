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
struct bnxt {int flags; int /*<<< orphan*/  vnic_info; } ;

/* Variables and functions */
 int BNXT_FLAG_CHIP_P5 ; 
 int BNXT_FLAG_TPA ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*,int) ; 

__attribute__((used)) static void FUNC5(struct bnxt *bp)
{
	if (!bp->vnic_info)
		return;

	FUNC0(bp);
	if (!(bp->flags & BNXT_FLAG_CHIP_P5)) {
		/* clear all RSS setting before free vnic ctx */
		FUNC1(bp);
		FUNC2(bp);
	}
	/* before free the vnic, undo the vnic tpa settings */
	if (bp->flags & BNXT_FLAG_TPA)
		FUNC4(bp, false);
	FUNC3(bp);
	if (bp->flags & BNXT_FLAG_CHIP_P5)
		FUNC2(bp);
}
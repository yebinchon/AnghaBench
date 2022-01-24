#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bnx2x {int flags; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 int FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int USING_MSIX_FLAG ; 
 int USING_SINGLE_MSIX_FLAG ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC5(struct bnx2x *bp)
{
	if (bp->flags & USING_MSIX_FLAG &&
	    !(bp->flags & USING_SINGLE_MSIX_FLAG)) {
		int nvecs = FUNC0(bp) + FUNC1(bp);

		/* vfs don't have a default status block */
		if (FUNC2(bp))
			nvecs++;

		FUNC3(bp, nvecs);
	} else {
		FUNC4(bp->dev->irq, bp->dev);
	}
}
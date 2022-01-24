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
struct bnx2 {int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  dev; scalar_t__ link_up; int /*<<< orphan*/  intr_sem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bnx2 *bp, bool start_cnic)
{
	if (FUNC0(&bp->intr_sem)) {
		if (FUNC5(bp->dev)) {
			FUNC6(bp->dev);
			FUNC7(&bp->phy_lock);
			if (bp->link_up)
				FUNC4(bp->dev);
			FUNC8(&bp->phy_lock);
			FUNC3(bp);
			FUNC2(bp);
			if (start_cnic)
				FUNC1(bp);
		}
	}
}
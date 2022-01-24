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
struct bnx2x {int flags; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int AER_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bnx2x *bp)
{
	if (bp->flags & AER_ENABLED) {
		FUNC0(bp->pdev);
		bp->flags &= ~AER_ENABLED;
	}
}
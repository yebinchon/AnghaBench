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
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bnx2x {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp)
{
	bool update = false;

	FUNC4(bp);

	if (bp->port.pmf)
		update = (FUNC1(bp) == 0);

	update |= (FUNC5(bp) == 0);

	if (update) {
		FUNC2(bp);

		if (bp->port.pmf)
			FUNC3(bp);

		FUNC0(bp);
		FUNC4(bp);
	}
}
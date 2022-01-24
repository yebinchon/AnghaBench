#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct rvu {TYPE_2__* flr_wrk; int /*<<< orphan*/  flr_wq; TYPE_1__* hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct TYPE_3__ {int total_pfs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rvu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rvu *rvu, int start_vf, int numvfs)
{
	int dev, vf, reg = 0;
	u64 intr;

	if (start_vf >= 64)
		reg = 1;

	intr = FUNC4(rvu, FUNC1(reg));
	if (!intr)
		return;

	for (vf = 0; vf < numvfs; vf++) {
		if (!(intr & FUNC0(vf)))
			continue;
		dev = vf + start_vf + rvu->hw->total_pfs;
		FUNC3(rvu->flr_wq, &rvu->flr_wrk[dev].work);
		/* Clear and disable the interrupt */
		FUNC5(rvu, FUNC1(reg), FUNC0(vf));
		FUNC5(rvu, FUNC2(reg), FUNC0(vf));
	}
}
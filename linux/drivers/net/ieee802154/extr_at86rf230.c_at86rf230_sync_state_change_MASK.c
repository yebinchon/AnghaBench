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
struct at86rf230_local {int /*<<< orphan*/  state; int /*<<< orphan*/  state_complete; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct at86rf230_local*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct at86rf230_local*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  at86rf230_sync_state_change_complete ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct at86rf230_local *lp, unsigned int state)
{
	unsigned long rc;

	FUNC1(lp, &lp->state, state,
				     at86rf230_sync_state_change_complete);

	rc = FUNC3(&lp->state_complete,
					 FUNC2(100));
	if (!rc) {
		FUNC0(lp, &lp->state, -ETIMEDOUT);
		return -ETIMEDOUT;
	}

	return 0;
}
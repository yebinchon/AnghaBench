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
struct bnx2x {scalar_t__ panic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static inline int FUNC7(struct bnx2x *bp, int state,
				   unsigned long *pstate)
{
	/* can take a while if any port is running */
	int cnt = 5000;

	if (FUNC1(bp))
		cnt *= 20;

	FUNC2(BNX2X_MSG_SP, "waiting for state to become %d\n", state);

	FUNC4();
	while (cnt--) {
		if (!FUNC5(state, pstate)) {
#ifdef BNX2X_STOP_ON_ERROR
			DP(BNX2X_MSG_SP, "exit  (cnt %d)\n", 5000 - cnt);
#endif
			return 0;
		}

		FUNC6(1000, 2000);

		if (bp->panic)
			return -EIO;
	}

	/* timeout! */
	FUNC0("timeout waiting for state %d\n", state);
#ifdef BNX2X_STOP_ON_ERROR
	bnx2x_panic();
#endif

	return -EBUSY;
}
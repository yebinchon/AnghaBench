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
struct bnx2x {int /*<<< orphan*/  stats_lock; scalar_t__ stats_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int FUNC7(struct bnx2x *bp,
			  void (func_to_exec)(void *cookie),
			  void *cookie)
{
	int cnt = 10, rc = 0;

	/* Wait for statistics to end [while blocking further requests],
	 * then run supplied function 'safely'.
	 */
	rc = FUNC3(&bp->stats_lock, HZ / 10);
	if (FUNC4(rc)) {
		FUNC0("Failed to take statistics lock for safe execution\n");
		goto out_no_lock;
	}

	FUNC1(bp);
	while (bp->stats_pending && cnt--)
		if (FUNC2(bp))
			FUNC6(1000, 2000);
	if (bp->stats_pending) {
		FUNC0("Failed to wait for stats pending to clear [possibly FW is stuck]\n");
		rc = -EBUSY;
		goto out;
	}

	func_to_exec(cookie);

out:
	/* No need to restart statistics - if they're enabled, the timer
	 * will restart the statistics.
	 */
	FUNC5(&bp->stats_lock);
out_no_lock:
	return rc;
}
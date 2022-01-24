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
struct timespec64 {int dummy; } ;
struct macb {int /*<<< orphan*/  tsu_incr; int /*<<< orphan*/  ptp_clock_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  TA ; 
 int /*<<< orphan*/  FUNC0 (struct macb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct macb *bp)
{
	struct timespec64 ts;

	/* 1. get current system time */
	ts = FUNC5(FUNC4(FUNC3()));

	/* 2. set ptp timer */
	FUNC1(&bp->ptp_clock_info, &ts);

	/* 3. set PTP timer increment value to BASE_INCREMENT */
	FUNC0(bp, &bp->tsu_incr);

	FUNC2(bp, TA, 0);
}
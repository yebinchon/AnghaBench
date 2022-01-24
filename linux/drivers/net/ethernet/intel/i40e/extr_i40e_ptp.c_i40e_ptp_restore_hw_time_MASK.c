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
struct i40e_pf {int /*<<< orphan*/  ptp_prev_hw_time; int /*<<< orphan*/  ptp_caps; int /*<<< orphan*/  ptp_reset_start; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct i40e_pf *pf)
{
	ktime_t delta = FUNC2(FUNC1(), pf->ptp_reset_start);

	/* Update the previous HW time with the ktime delta */
	FUNC4(&pf->ptp_prev_hw_time, FUNC3(delta));

	/* Restore the hardware clock registers */
	FUNC0(&pf->ptp_caps, &pf->ptp_prev_hw_time);
}
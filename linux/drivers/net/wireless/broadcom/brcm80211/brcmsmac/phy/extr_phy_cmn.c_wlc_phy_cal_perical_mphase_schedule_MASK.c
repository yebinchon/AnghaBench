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
typedef  int /*<<< orphan*/  uint ;
struct brcms_phy {scalar_t__ nphy_perical; int /*<<< orphan*/  phycal_timer; int /*<<< orphan*/  mphase_cal_phase_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPHASE_CAL_STATE_INIT ; 
 scalar_t__ PHY_PERICAL_MANUAL ; 
 scalar_t__ PHY_PERICAL_MPHASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct brcms_phy *pi, uint delay)
{

	if ((pi->nphy_perical != PHY_PERICAL_MPHASE) &&
	    (pi->nphy_perical != PHY_PERICAL_MANUAL))
		return;

	FUNC1(pi->phycal_timer);

	pi->mphase_cal_phase_id = MPHASE_CAL_STATE_INIT;
	FUNC0(pi->phycal_timer, delay, 0);
}
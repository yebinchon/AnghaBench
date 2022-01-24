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
struct ice_pf {int /*<<< orphan*/  serv_task; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ICE_NEEDS_RESTART ; 
 int /*<<< orphan*/  __ICE_SERVICE_DIS ; 
 int /*<<< orphan*/  __ICE_SERVICE_SCHED ; 
 int /*<<< orphan*/  ice_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ice_pf *pf)
{
	if (!FUNC2(__ICE_SERVICE_DIS, pf->state) &&
	    !FUNC1(__ICE_SERVICE_SCHED, pf->state) &&
	    !FUNC2(__ICE_NEEDS_RESTART, pf->state))
		FUNC0(ice_wq, &pf->serv_task);
}
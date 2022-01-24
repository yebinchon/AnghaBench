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
struct TYPE_4__ {scalar_t__ func; } ;
struct TYPE_3__ {scalar_t__ function; } ;
struct ice_pf {int /*<<< orphan*/  state; TYPE_2__ serv_task; TYPE_1__ serv_tmr; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ICE_SERVICE_DIS ; 
 int /*<<< orphan*/  __ICE_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ice_pf *pf)
{
	FUNC3(__ICE_SERVICE_DIS, pf->state);

	if (pf->serv_tmr.function)
		FUNC2(&pf->serv_tmr);
	if (pf->serv_task.func)
		FUNC0(&pf->serv_task);

	FUNC1(__ICE_SERVICE_SCHED, pf->state);
}
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
struct adapter {TYPE_1__* uld; int /*<<< orphan*/  list_node; } ;
struct TYPE_2__ {scalar_t__ handle; int /*<<< orphan*/  (* state_change ) (scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_STATE_DETACH ; 
 unsigned int CXGB4_ULD_MAX ; 
 int /*<<< orphan*/  adapter_list ; 
 int /*<<< orphan*/  cxgb4_netevent_nb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int netevent_registered ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uld_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct adapter *adap)
{
	unsigned int i;

	FUNC2(&uld_mutex);
	FUNC0(&adap->list_node);

	for (i = 0; i < CXGB4_ULD_MAX; i++)
		if (adap->uld && adap->uld[i].handle)
			adap->uld[i].state_change(adap->uld[i].handle,
					     CXGB4_STATE_DETACH);

	if (netevent_registered && FUNC1(&adapter_list)) {
		FUNC5(&cxgb4_netevent_nb);
		netevent_registered = false;
	}
	FUNC3(&uld_mutex);
}
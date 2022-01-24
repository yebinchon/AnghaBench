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
struct be_adapter {scalar_t__ ocrdma_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* state_change_handler ) (scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BE_DEV_SHUTDOWN ; 
 int /*<<< orphan*/  be_adapter_list_lock ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ocrdma_drv ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC4(struct be_adapter *adapter)
{
	if (FUNC0(adapter)) {
		FUNC1(&be_adapter_list_lock);
		if (ocrdma_drv && adapter->ocrdma_dev &&
		    ocrdma_drv->state_change_handler)
			ocrdma_drv->state_change_handler(adapter->ocrdma_dev,
							 BE_DEV_SHUTDOWN);
		FUNC2(&be_adapter_list_lock);
	}
}
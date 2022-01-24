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
struct notifier_block {int dummy; } ;
struct memory_notify {int /*<<< orphan*/  nr_pages; int /*<<< orphan*/  start_pfn; } ;

/* Variables and functions */
#define  MEM_CANCEL_OFFLINE 130 
#define  MEM_GOING_OFFLINE 129 
#define  MEM_ONLINE 128 
 int NOTIFY_BAD ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  __EHEA_STOP_XFER ; 
 int /*<<< orphan*/  dlpar_mem_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ehea_driver_flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct notifier_block *nb,
			     unsigned long action, void *data)
{
	int ret = NOTIFY_BAD;
	struct memory_notify *arg = data;

	FUNC4(&dlpar_mem_lock);

	switch (action) {
	case MEM_CANCEL_OFFLINE:
		FUNC6("memory offlining canceled");
		/* Fall through - re-add canceled memory block */

	case MEM_ONLINE:
		FUNC6("memory is going online");
		FUNC7(__EHEA_STOP_XFER, &ehea_driver_flags);
		if (FUNC0(arg->start_pfn, arg->nr_pages))
			goto out_unlock;
		FUNC2();
		break;

	case MEM_GOING_OFFLINE:
		FUNC6("memory is going offline");
		FUNC7(__EHEA_STOP_XFER, &ehea_driver_flags);
		if (FUNC1(arg->start_pfn, arg->nr_pages))
			goto out_unlock;
		FUNC2();
		break;

	default:
		break;
	}

	FUNC3();
	ret = NOTIFY_OK;

out_unlock:
	FUNC5(&dlpar_mem_lock);
	return ret;
}
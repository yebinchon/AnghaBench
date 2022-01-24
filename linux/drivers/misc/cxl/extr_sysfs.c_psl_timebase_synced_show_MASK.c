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
typedef  scalar_t__ u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl {int psl_timebase_synced; TYPE_2__* native; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {TYPE_1__* sl_ops; } ;
struct TYPE_3__ {scalar_t__ (* timebase_read ) (struct cxl*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (struct cxl*) ; 
 int FUNC6 (scalar_t__) ; 
 struct cxl* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *device,
					struct device_attribute *attr,
					char *buf)
{
	struct cxl *adapter = FUNC7(device);
	u64 psl_tb, delta;

	/* Recompute the status only in native mode */
	if (FUNC1(CPU_FTR_HVMODE)) {
		psl_tb = adapter->native->sl_ops->timebase_read(adapter);
		delta = FUNC0(FUNC2() - psl_tb);

		/* CORE TB and PSL TB difference <= 16usecs ? */
		adapter->psl_timebase_synced = (FUNC6(delta) < 16000) ? true : false;
		FUNC3("PSL timebase %s - delta: 0x%016llx\n",
			 (FUNC6(delta) < 16000) ? "synchronized" :
			 "not synchronized", FUNC6(delta));
	}
	return FUNC4(buf, PAGE_SIZE, "%i\n", adapter->psl_timebase_synced);
}
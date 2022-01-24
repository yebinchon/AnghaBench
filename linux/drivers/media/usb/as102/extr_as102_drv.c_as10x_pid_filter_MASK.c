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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u16 ;
struct as10x_ts_filter {int idx; int /*<<< orphan*/  pid; int /*<<< orphan*/  type; } ;
struct as10x_bus_adapter_t {int /*<<< orphan*/  lock; TYPE_1__* usb_dev; } ;
struct as102_dev_t {struct as10x_bus_adapter_t bus_adap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int /*<<< orphan*/  TS_PID_TYPE_TS ; 
 int FUNC0 (struct as10x_bus_adapter_t*,struct as10x_ts_filter*) ; 
 int FUNC1 (struct as10x_bus_adapter_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct as102_dev_t *dev,
			    int index, u16 pid, int onoff) {

	struct as10x_bus_adapter_t *bus_adap = &dev->bus_adap;
	int ret = -EFAULT;

	if (FUNC3(&dev->bus_adap.lock)) {
		FUNC2(&dev->bus_adap.usb_dev->dev,
			"amutex_lock_interruptible(lock) failed !\n");
		return -EBUSY;
	}

	switch (onoff) {
	case 0:
		ret = FUNC1(bus_adap, (uint16_t) pid);
		FUNC2(&dev->bus_adap.usb_dev->dev,
			"DEL_PID_FILTER([%02d] 0x%04x) ret = %d\n",
			index, pid, ret);
		break;
	case 1:
	{
		struct as10x_ts_filter filter;

		filter.type = TS_PID_TYPE_TS;
		filter.idx = 0xFF;
		filter.pid = pid;

		ret = FUNC0(bus_adap, &filter);
		FUNC2(&dev->bus_adap.usb_dev->dev,
			"ADD_PID_FILTER([%02d -> %02d], 0x%04x) ret = %d\n",
			index, filter.idx, filter.pid, ret);
		break;
	}
	}

	FUNC4(&dev->bus_adap.lock);
	return ret;
}
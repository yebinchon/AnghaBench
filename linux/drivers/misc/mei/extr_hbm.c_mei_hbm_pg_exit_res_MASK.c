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
struct mei_device {int pg_event; int /*<<< orphan*/  wait_pg; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROTO ; 
#define  MEI_PG_EVENT_IDLE 129 
 void* MEI_PG_EVENT_RECEIVED ; 
#define  MEI_PG_EVENT_WAIT 128 
 scalar_t__ MEI_PG_ON ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 
 scalar_t__ FUNC3 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mei_device *dev)
{
	if (FUNC3(dev) != MEI_PG_ON ||
	    (dev->pg_event != MEI_PG_EVENT_WAIT &&
	     dev->pg_event != MEI_PG_EVENT_IDLE)) {
		FUNC1(dev->dev, "hbm: pg exit response: state mismatch [%s, %d]\n",
			FUNC4(FUNC3(dev)), dev->pg_event);
		return -EPROTO;
	}

	switch (dev->pg_event) {
	case MEI_PG_EVENT_WAIT:
		dev->pg_event = MEI_PG_EVENT_RECEIVED;
		FUNC5(&dev->wait_pg);
		break;
	case MEI_PG_EVENT_IDLE:
		/*
		* If the driver is not waiting on this then
		* this is HW initiated exit from PG.
		* Start runtime pm resume sequence to exit from PG.
		*/
		dev->pg_event = MEI_PG_EVENT_RECEIVED;
		FUNC2(dev);
		break;
	default:
		FUNC0(1, "hbm: pg exit response: unexpected pg event = %d\n",
		     dev->pg_event);
		return -EPROTO;
	}

	return 0;
}
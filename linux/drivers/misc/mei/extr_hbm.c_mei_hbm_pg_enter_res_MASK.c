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
struct mei_device {scalar_t__ pg_event; int /*<<< orphan*/  wait_pg; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROTO ; 
 scalar_t__ MEI_PG_EVENT_RECEIVED ; 
 scalar_t__ MEI_PG_EVENT_WAIT ; 
 scalar_t__ MEI_PG_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mei_device *dev)
{
	if (FUNC1(dev) != MEI_PG_OFF ||
	    dev->pg_event != MEI_PG_EVENT_WAIT) {
		FUNC0(dev->dev, "hbm: pg entry response: state mismatch [%s, %d]\n",
			FUNC2(FUNC1(dev)), dev->pg_event);
		return -EPROTO;
	}

	dev->pg_event = MEI_PG_EVENT_RECEIVED;
	FUNC3(&dev->wait_pg);

	return 0;
}
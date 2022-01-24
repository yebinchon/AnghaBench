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
struct mei_me_hw {int /*<<< orphan*/  pg_state; } ;
struct mei_device {scalar_t__ pg_event; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  wait_pg; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  MEI_PGI_TIMEOUT ; 
 scalar_t__ MEI_PG_EVENT_IDLE ; 
 scalar_t__ MEI_PG_EVENT_INTR_RECEIVED ; 
 scalar_t__ MEI_PG_EVENT_INTR_WAIT ; 
 scalar_t__ MEI_PG_EVENT_RECEIVED ; 
 scalar_t__ MEI_PG_EVENT_WAIT ; 
 int /*<<< orphan*/  MEI_PG_ISOLATION_EXIT_RES_CMD ; 
 int /*<<< orphan*/  MEI_PG_OFF ; 
 int FUNC0 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mei_me_hw* FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct mei_device *dev)
{
	struct mei_me_hw *hw = FUNC5(dev);
	unsigned long timeout = FUNC2(MEI_PGI_TIMEOUT);
	int ret;

	if (dev->pg_event == MEI_PG_EVENT_RECEIVED)
		goto reply;

	dev->pg_event = MEI_PG_EVENT_WAIT;

	FUNC1(dev);

	FUNC4(&dev->device_lock);
	FUNC6(dev->wait_pg,
		dev->pg_event == MEI_PG_EVENT_RECEIVED, timeout);
	FUNC3(&dev->device_lock);

reply:
	if (dev->pg_event != MEI_PG_EVENT_RECEIVED) {
		ret = -ETIME;
		goto out;
	}

	dev->pg_event = MEI_PG_EVENT_INTR_WAIT;
	ret = FUNC0(dev, MEI_PG_ISOLATION_EXIT_RES_CMD);
	if (ret)
		return ret;

	FUNC4(&dev->device_lock);
	FUNC6(dev->wait_pg,
		dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED, timeout);
	FUNC3(&dev->device_lock);

	if (dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED)
		ret = 0;
	else
		ret = -ETIME;

out:
	dev->pg_event = MEI_PG_EVENT_IDLE;
	hw->pg_state = MEI_PG_OFF;

	return ret;
}
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
typedef  int u32 ;
struct mei_me_hw {int /*<<< orphan*/  pg_state; } ;
struct mei_device {scalar_t__ pg_event; int /*<<< orphan*/  dev; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  wait_pg; } ;

/* Variables and functions */
 int ETIME ; 
 int H_D0I3C_CIP ; 
 int H_D0I3C_I3 ; 
 int /*<<< orphan*/  MEI_D0I3_TIMEOUT ; 
 scalar_t__ MEI_PG_EVENT_IDLE ; 
 scalar_t__ MEI_PG_EVENT_INTR_RECEIVED ; 
 scalar_t__ MEI_PG_EVENT_INTR_WAIT ; 
 int /*<<< orphan*/  MEI_PG_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct mei_device*) ; 
 int FUNC2 (struct mei_device*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mei_me_hw* FUNC6 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct mei_device *dev)
{
	struct mei_me_hw *hw = FUNC6(dev);
	unsigned long timeout = FUNC3(MEI_D0I3_TIMEOUT);
	int ret;
	u32 reg;

	dev->pg_event = MEI_PG_EVENT_INTR_WAIT;

	reg = FUNC2(dev);
	if (!(reg & H_D0I3C_I3)) {
		/* we are not in d0i3, nothing to do */
		FUNC0(dev->dev, "d0i3 exit not needed\n");
		ret = 0;
		goto off;
	}

	reg = FUNC1(dev);
	if (!(reg & H_D0I3C_CIP)) {
		FUNC0(dev->dev, "d0i3 exit wait not needed\n");
		ret = 0;
		goto off;
	}

	FUNC5(&dev->device_lock);
	FUNC7(dev->wait_pg,
		dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED, timeout);
	FUNC4(&dev->device_lock);

	if (dev->pg_event != MEI_PG_EVENT_INTR_RECEIVED) {
		reg = FUNC2(dev);
		if (reg & H_D0I3C_I3) {
			ret = -ETIME;
			goto out;
		}
	}

	ret = 0;
off:
	hw->pg_state = MEI_PG_OFF;
out:
	dev->pg_event = MEI_PG_EVENT_IDLE;

	FUNC0(dev->dev, "d0i3 exit ret = %d\n", ret);
	return ret;
}
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
 int /*<<< orphan*/  MEI_PGI_TIMEOUT ; 
 scalar_t__ MEI_PG_EVENT_IDLE ; 
 scalar_t__ MEI_PG_EVENT_INTR_RECEIVED ; 
 scalar_t__ MEI_PG_EVENT_INTR_WAIT ; 
 scalar_t__ MEI_PG_EVENT_RECEIVED ; 
 scalar_t__ MEI_PG_EVENT_WAIT ; 
 int /*<<< orphan*/  MEI_PG_ISOLATION_ENTRY_REQ_CMD ; 
 int /*<<< orphan*/  MEI_PG_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mei_device*,int) ; 
 int FUNC3 (struct mei_device*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mei_me_hw* FUNC7 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct mei_device *dev)
{
	struct mei_me_hw *hw = FUNC7(dev);
	unsigned long d0i3_timeout = FUNC4(MEI_D0I3_TIMEOUT);
	unsigned long pgi_timeout = FUNC4(MEI_PGI_TIMEOUT);
	int ret;
	u32 reg;

	reg = FUNC3(dev);
	if (reg & H_D0I3C_I3) {
		/* we are in d0i3, nothing to do */
		FUNC0(dev->dev, "d0i3 set not needed\n");
		ret = 0;
		goto on;
	}

	/* PGI entry procedure */
	dev->pg_event = MEI_PG_EVENT_WAIT;

	ret = FUNC1(dev, MEI_PG_ISOLATION_ENTRY_REQ_CMD);
	if (ret)
		/* FIXME: should we reset here? */
		goto out;

	FUNC6(&dev->device_lock);
	FUNC8(dev->wait_pg,
		dev->pg_event == MEI_PG_EVENT_RECEIVED, pgi_timeout);
	FUNC5(&dev->device_lock);

	if (dev->pg_event != MEI_PG_EVENT_RECEIVED) {
		ret = -ETIME;
		goto out;
	}
	/* end PGI entry procedure */

	dev->pg_event = MEI_PG_EVENT_INTR_WAIT;

	reg = FUNC2(dev, true);
	if (!(reg & H_D0I3C_CIP)) {
		FUNC0(dev->dev, "d0i3 enter wait not needed\n");
		ret = 0;
		goto on;
	}

	FUNC6(&dev->device_lock);
	FUNC8(dev->wait_pg,
		dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED, d0i3_timeout);
	FUNC5(&dev->device_lock);

	if (dev->pg_event != MEI_PG_EVENT_INTR_RECEIVED) {
		reg = FUNC3(dev);
		if (!(reg & H_D0I3C_I3)) {
			ret = -ETIME;
			goto out;
		}
	}

	ret = 0;
on:
	hw->pg_state = MEI_PG_ON;
out:
	dev->pg_event = MEI_PG_EVENT_IDLE;
	FUNC0(dev->dev, "d0i3 enter ret = %d\n", ret);
	return ret;
}
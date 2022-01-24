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
struct mei_me_hw {scalar_t__ pg_state; } ;
struct mei_device {scalar_t__ pg_event; scalar_t__ hbm_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  wait_pg; } ;

/* Variables and functions */
 int H_D0I3C_IS ; 
 int H_IS ; 
 scalar_t__ MEI_HBM_IDLE ; 
 scalar_t__ MEI_PG_EVENT_INTR_RECEIVED ; 
 scalar_t__ MEI_PG_EVENT_INTR_WAIT ; 
 scalar_t__ MEI_PG_OFF ; 
 scalar_t__ MEI_PG_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 
 struct mei_me_hw* FUNC3 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mei_device *dev, u32 intr_source)
{
	struct mei_me_hw *hw = FUNC3(dev);

	if (dev->pg_event == MEI_PG_EVENT_INTR_WAIT &&
	    (intr_source & H_D0I3C_IS)) {
		dev->pg_event = MEI_PG_EVENT_INTR_RECEIVED;
		if (hw->pg_state == MEI_PG_ON) {
			hw->pg_state = MEI_PG_OFF;
			if (dev->hbm_state != MEI_HBM_IDLE) {
				/*
				 * force H_RDY because it could be
				 * wiped off during PG
				 */
				FUNC0(dev->dev, "d0i3 set host ready\n");
				FUNC2(dev);
			}
		} else {
			hw->pg_state = MEI_PG_ON;
		}

		FUNC4(&dev->wait_pg);
	}

	if (hw->pg_state == MEI_PG_ON && (intr_source & H_IS)) {
		/*
		 * HW sent some data and we are in D0i3, so
		 * we got here because of HW initiated exit from D0i3.
		 * Start runtime pm resume sequence to exit low power state.
		 */
		FUNC0(dev->dev, "d0i3 want resume\n");
		FUNC1(dev);
	}
}
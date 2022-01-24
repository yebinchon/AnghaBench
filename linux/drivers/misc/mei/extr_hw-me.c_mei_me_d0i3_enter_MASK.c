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
struct mei_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  pg_event; } ;

/* Variables and functions */
 int H_D0I3C_I3 ; 
 int /*<<< orphan*/  MEI_PG_EVENT_IDLE ; 
 int /*<<< orphan*/  MEI_PG_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,int) ; 
 int FUNC2 (struct mei_device*) ; 
 struct mei_me_hw* FUNC3 (struct mei_device*) ; 

__attribute__((used)) static int FUNC4(struct mei_device *dev)
{
	struct mei_me_hw *hw = FUNC3(dev);
	u32 reg;

	reg = FUNC2(dev);
	if (reg & H_D0I3C_I3) {
		/* we are in d0i3, nothing to do */
		FUNC0(dev->dev, "already d0i3 : set not needed\n");
		goto on;
	}

	FUNC1(dev, false);
on:
	hw->pg_state = MEI_PG_ON;
	dev->pg_event = MEI_PG_EVENT_IDLE;
	FUNC0(dev->dev, "d0i3 enter\n");
	return 0;
}
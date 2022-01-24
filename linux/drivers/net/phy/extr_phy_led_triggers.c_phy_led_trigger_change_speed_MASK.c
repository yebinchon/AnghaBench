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
struct phy_led_trigger {int /*<<< orphan*/  trigger; } ;
struct phy_device {scalar_t__ speed; struct phy_led_trigger* last_triggered; TYPE_1__* led_link_trigger; int /*<<< orphan*/  attached_dev; int /*<<< orphan*/  link; } ;
struct TYPE_2__ {int /*<<< orphan*/  trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 void FUNC2 (struct phy_device*) ; 
 struct phy_led_trigger* FUNC3 (struct phy_device*,scalar_t__) ; 

void FUNC4(struct phy_device *phy)
{
	struct phy_led_trigger *plt;

	if (!phy->link)
		return FUNC2(phy);

	if (phy->speed == 0)
		return;

	plt = FUNC3(phy, phy->speed);
	if (!plt) {
		FUNC1(phy->attached_dev,
			     "No phy led trigger registered for speed(%d)\n",
			     phy->speed);
		return FUNC2(phy);
	}

	if (plt != phy->last_triggered) {
		if (!phy->last_triggered)
			FUNC0(&phy->led_link_trigger->trigger,
					  LED_FULL);
		else
			FUNC0(&phy->last_triggered->trigger, LED_OFF);

		FUNC0(&plt->trigger, LED_FULL);
		phy->last_triggered = plt;
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ radio_on; } ;
struct b43_wldev {TYPE_3__* wl; TYPE_1__ phy; } ;
struct b43_led {unsigned int index; int activelow; int hw_state; int /*<<< orphan*/  state; scalar_t__ wl; } ;
typedef  enum b43_led_behaviour { ____Placeholder_b43_led_behaviour } b43_led_behaviour ;
struct TYPE_5__ {scalar_t__ stop; struct b43_led led_assoc; struct b43_led led_rx; struct b43_led led_tx; struct b43_led led_radio; } ;
struct TYPE_6__ {TYPE_2__ leds; } ;

/* Variables and functions */
#define  B43_LED_OFF 129 
#define  B43_LED_ON 128 
 unsigned int B43_MAX_NR_LEDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,unsigned int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,unsigned int,int) ; 

void FUNC5(struct b43_wldev *dev)
{
	struct b43_led *led;
	unsigned int i;
	enum b43_led_behaviour behaviour;
	bool activelow;

	/* Sync the RF-kill LED state (if we have one) with radio and switch states. */
	led = &dev->wl->leds.led_radio;
	if (led->wl) {
		if (dev->phy.radio_on && FUNC1(dev)) {
			FUNC4(dev, led->index, led->activelow);
			led->hw_state = true;
			FUNC0(&led->state, 1);
		} else {
			FUNC3(dev, led->index, led->activelow);
			led->hw_state = false;
			FUNC0(&led->state, 0);
		}
	}

	/* Initialize TX/RX/ASSOC leds */
	led = &dev->wl->leds.led_tx;
	if (led->wl) {
		FUNC3(dev, led->index, led->activelow);
		led->hw_state = false;
		FUNC0(&led->state, 0);
	}
	led = &dev->wl->leds.led_rx;
	if (led->wl) {
		FUNC3(dev, led->index, led->activelow);
		led->hw_state = false;
		FUNC0(&led->state, 0);
	}
	led = &dev->wl->leds.led_assoc;
	if (led->wl) {
		FUNC3(dev, led->index, led->activelow);
		led->hw_state = false;
		FUNC0(&led->state, 0);
	}

	/* Initialize other LED states. */
	for (i = 0; i < B43_MAX_NR_LEDS; i++) {
		FUNC2(dev, i, &behaviour, &activelow);
		switch (behaviour) {
		case B43_LED_OFF:
			FUNC3(dev, i, activelow);
			break;
		case B43_LED_ON:
			FUNC4(dev, i, activelow);
			break;
		default:
			/* Leave others as-is. */
			break;
		}
	}

	dev->wl->leds.stop = 0;
}
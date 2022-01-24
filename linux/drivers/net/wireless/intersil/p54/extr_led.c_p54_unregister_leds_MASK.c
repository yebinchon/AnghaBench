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
struct p54_common {int /*<<< orphan*/  led_work; TYPE_1__* leds; } ;
struct TYPE_2__ {int registered; int /*<<< orphan*/  led_dev; scalar_t__ toggled; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct p54_common *priv)
{
	int i;

	for (i = 0; i < FUNC0(priv->leds); i++) {
		if (priv->leds[i].registered) {
			priv->leds[i].registered = false;
			priv->leds[i].toggled = 0;
			FUNC2(&priv->leds[i].led_dev);
		}
	}

	FUNC1(&priv->led_work);
}
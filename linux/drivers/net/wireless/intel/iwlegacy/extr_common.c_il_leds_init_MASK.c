#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int max_brightness; int /*<<< orphan*/  name; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; } ;
struct il_priv {int led_registered; TYPE_3__ led; TYPE_2__* pci_dev; TYPE_4__* hw; TYPE_1__* cfg; } ;
struct TYPE_9__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int led_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_TPT_LEDTRIG_FL_CONNECTED ; 
#define  IL_LED_BLINK 130 
#define  IL_LED_DEFAULT 129 
#define  IL_LED_RF_STATE 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  il_blink ; 
 int /*<<< orphan*/  il_led_blink_set ; 
 int /*<<< orphan*/  il_led_brightness_set ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int led_mode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct il_priv *il)
{
	int mode = led_mode;
	int ret;

	if (mode == IL_LED_DEFAULT)
		mode = il->cfg->led_mode;

	il->led.name =
	    FUNC4(GFP_KERNEL, "%s-led", FUNC7(il->hw->wiphy));
	il->led.brightness_set = il_led_brightness_set;
	il->led.blink_set = il_led_blink_set;
	il->led.max_brightness = 1;

	switch (mode) {
	case IL_LED_DEFAULT:
		FUNC1(1);
		break;
	case IL_LED_BLINK:
		il->led.default_trigger =
		    FUNC2(il->hw,
						     IEEE80211_TPT_LEDTRIG_FL_CONNECTED,
						     il_blink,
						     FUNC0(il_blink));
		break;
	case IL_LED_RF_STATE:
		il->led.default_trigger = FUNC3(il->hw);
		break;
	}

	ret = FUNC6(&il->pci_dev->dev, &il->led);
	if (ret) {
		FUNC5(il->led.name);
		return;
	}

	il->led_registered = true;
}
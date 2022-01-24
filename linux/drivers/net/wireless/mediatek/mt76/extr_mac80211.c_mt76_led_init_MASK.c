#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; } ;
struct mt76_dev {int led_pin; TYPE_2__ led_cdev; TYPE_1__* dev; int /*<<< orphan*/  led_al; int /*<<< orphan*/  led_name; struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_TPT_LEDTRIG_FL_RADIO ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt76_tpt_blink ; 
 struct device_node* FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mt76_dev *dev)
{
	struct device_node *np = dev->dev->of_node;
	struct ieee80211_hw *hw = dev->hw;
	int led_pin;

	if (!dev->led_cdev.brightness_set && !dev->led_cdev.blink_set)
		return 0;

	FUNC6(dev->led_name, sizeof(dev->led_name),
		 "mt76-%s", FUNC7(hw->wiphy));

	dev->led_cdev.name = dev->led_name;
	dev->led_cdev.default_trigger =
		FUNC2(hw,
					IEEE80211_TPT_LEDTRIG_FL_RADIO,
					mt76_tpt_blink,
					FUNC0(mt76_tpt_blink));

	np = FUNC3(np, "led");
	if (np) {
		if (!FUNC5(np, "led-sources", &led_pin))
			dev->led_pin = led_pin;
		dev->led_al = FUNC4(np, "led-active-low");
	}

	return FUNC1(dev->dev, &dev->led_cdev);
}
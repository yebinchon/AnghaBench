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
typedef  int /*<<< orphan*/  u32 ;
struct hns_mac_cb {int /*<<< orphan*/  dev; int /*<<< orphan*/  cpld_led_value; int /*<<< orphan*/  cpld_ctrl_reg; int /*<<< orphan*/  cpld_ctrl; } ;
typedef  enum hnae_led_state { ____Placeholder_hnae_led_state } hnae_led_state ;

/* Variables and functions */
 int /*<<< orphan*/  CPLD_LED_DEFAULT_VALUE ; 
 int /*<<< orphan*/  CPLD_LED_ON_VALUE ; 
 int /*<<< orphan*/  DSAF_LED_ANCHOR_B ; 
 int EINVAL ; 
#define  HNAE_LED_ACTIVE 129 
#define  HNAE_LED_INACTIVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hns_mac_cb *mac_cb,
			   enum hnae_led_state status)
{
	u32 val = 0;
	int ret;

	if (!mac_cb->cpld_ctrl)
		return 0;

	switch (status) {
	case HNAE_LED_ACTIVE:
		ret = FUNC1(mac_cb->cpld_ctrl, mac_cb->cpld_ctrl_reg,
				       &val);
		if (ret)
			return ret;

		FUNC2(val, DSAF_LED_ANCHOR_B, CPLD_LED_ON_VALUE);
		FUNC3(mac_cb->cpld_ctrl, mac_cb->cpld_ctrl_reg,
				  val);
		mac_cb->cpld_led_value = val;
		break;
	case HNAE_LED_INACTIVE:
		FUNC2(mac_cb->cpld_led_value, DSAF_LED_ANCHOR_B,
			     CPLD_LED_DEFAULT_VALUE);
		FUNC3(mac_cb->cpld_ctrl, mac_cb->cpld_ctrl_reg,
				  mac_cb->cpld_led_value);
		break;
	default:
		FUNC0(mac_cb->dev, "invalid led state: %d!", status);
		return -EINVAL;
	}

	return 0;
}
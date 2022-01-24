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
struct hns_mac_cb {int /*<<< orphan*/  dev; int /*<<< orphan*/  mac_id; } ;
typedef  enum hnae_led_state { ____Placeholder_hnae_led_state } hnae_led_state ;

/* Variables and functions */
 int /*<<< orphan*/  CPLD_LED_DEFAULT_VALUE ; 
 int /*<<< orphan*/  CPLD_LED_ON_VALUE ; 
 int EINVAL ; 
#define  HNAE_LED_ACTIVE 129 
#define  HNAE_LED_INACTIVE 128 
 int /*<<< orphan*/  HNS_OP_LOCATE_LED_SET_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_mac_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hns_mac_cb *mac_cb,
				enum hnae_led_state status)
{
	switch (status) {
	case HNAE_LED_ACTIVE:
		FUNC1(mac_cb,
						     HNS_OP_LOCATE_LED_SET_FUNC,
						     CPLD_LED_ON_VALUE,
						     mac_cb->mac_id);
		break;
	case HNAE_LED_INACTIVE:
		FUNC1(mac_cb,
						     HNS_OP_LOCATE_LED_SET_FUNC,
						     CPLD_LED_DEFAULT_VALUE,
						     mac_cb->mac_id);
		break;
	default:
		FUNC0(mac_cb->dev, "invalid led state: %d!", status);
		return -EINVAL;
	}

	return 0;
}
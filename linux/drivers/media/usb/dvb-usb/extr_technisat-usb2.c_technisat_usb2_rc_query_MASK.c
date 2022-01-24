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
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TECH_LED_BLINK ; 
 int /*<<< orphan*/  disable_led_control ; 
 int FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_device *d)
{
	int ret = FUNC0(d);

	if (ret < 0)
		return ret;

	if (ret == 0)
		return 0;

	if (!disable_led_control)
		FUNC1(d, 1, TECH_LED_BLINK);

	return 0;
}
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
typedef  int u8 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_BLUEBIRD_GPIO_RW ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_device *d, u8 changemask,
				  u8 newval)
{
	u8 o[2], gpio_state;
	int rc;

	o[0] = 0xff & ~changemask;	/* mask of bits to keep */
	o[1] = newval & changemask;	/* new values for bits  */

	rc = FUNC0(d, CMD_BLUEBIRD_GPIO_RW, o, 2, &gpio_state, 1);
	if (rc < 0 || (gpio_state & changemask) != (newval & changemask))
		FUNC1("bluebird_gpio_write failed.\n");

	return rc < 0 ? rc : gpio_state;
}
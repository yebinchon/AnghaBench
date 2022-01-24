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
 int /*<<< orphan*/  CMD_GPIO_WRITE ; 
 int EIO ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_device *d,
				     u8 addr, int onoff)
{
	u8  o[2] = {addr, onoff};
	u8  i;
	int rc;

	rc = FUNC0(d, CMD_GPIO_WRITE, o, 2, &i, 1);

	if (rc < 0)
		return rc;

	if (i == 0x01)
		return 0;

	FUNC1("gpio_write failed.\n");
	return -EIO;
}
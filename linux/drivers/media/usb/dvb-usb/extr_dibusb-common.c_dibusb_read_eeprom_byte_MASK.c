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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dvb_usb_device*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(struct dvb_usb_device *d, u8 offs, u8 *val)
{
	u8 *buf;
	int rc;

	buf = FUNC2(2, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	buf[0] = offs;

	rc = FUNC0(d, 0x50, &buf[0], 1, &buf[1], 1);
	*val = buf[1];
	FUNC1(buf);

	return rc;
}
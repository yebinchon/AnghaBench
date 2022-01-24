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
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQUEST_IN ; 
 int /*<<< orphan*/  REQUEST_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct dvb_usb_device *d, u8 *o, int olen, u8 *i, int ilen, int msec)
{
	int ret;

	if ((ret = FUNC1(&d->usb_mutex)))
		return ret;

	ret = FUNC4(d, REQUEST_OUT, 0, 0, o, olen);
	FUNC0(msec);
	ret = FUNC3(d, REQUEST_IN, 0, 0, i, ilen);

	FUNC2(&d->usb_mutex);
	return ret;
}
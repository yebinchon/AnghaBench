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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DIBUSB_REQ_POLL_REMOTE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__*) ; 
 int FUNC1 (struct dvb_usb_device*,scalar_t__*,int,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*,scalar_t__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct dvb_usb_device *d, u32 *event, int *state)
{
	u8 *buf;
	int ret;

	buf = FUNC4(5, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	buf[0] = DIBUSB_REQ_POLL_REMOTE;

	ret = FUNC1(d, buf, 1, buf, 5, 0);
	if (ret < 0)
		goto ret;

	FUNC2(d, buf, event, state);

	if (buf[0] != 0)
		FUNC0("key: %*ph\n", 5, buf);

ret:
	FUNC3(buf);

	return ret;
}
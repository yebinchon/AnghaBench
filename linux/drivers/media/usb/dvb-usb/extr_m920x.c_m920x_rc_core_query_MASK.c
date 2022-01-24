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
struct dvb_usb_device {int /*<<< orphan*/  rc_dev; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  M9206_CORE ; 
 int /*<<< orphan*/  M9206_RC_KEY ; 
 int /*<<< orphan*/  M9206_RC_STATE ; 
 int /*<<< orphan*/  RC_PROTO_UNKNOWN ; 
 int REMOTE_KEY_REPEAT ; 
 int REMOTE_NO_KEY_PRESSED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_device *d)
{
	int ret = 0;
	u8 *rc_state;
	int state;

	rc_state = FUNC2(2, GFP_KERNEL);
	if (!rc_state)
		return -ENOMEM;

	if ((ret = FUNC4(d->udev, M9206_CORE, 0x0, M9206_RC_STATE, &rc_state[0], 1)) != 0)
		goto out;

	if ((ret = FUNC4(d->udev, M9206_CORE, 0x0, M9206_RC_KEY, &rc_state[1], 1)) != 0)
		goto out;

	FUNC0("state=0x%02x keycode=0x%02x\n", rc_state[0], rc_state[1]);

	FUNC3(d, rc_state[0], &state);

	if (state == REMOTE_NO_KEY_PRESSED)
		FUNC6(d->rc_dev);
	else if (state == REMOTE_KEY_REPEAT)
		FUNC7(d->rc_dev);
	else
		FUNC5(d->rc_dev, RC_PROTO_UNKNOWN, rc_state[1], 0);

out:
	FUNC1(rc_state);
	return ret;
}
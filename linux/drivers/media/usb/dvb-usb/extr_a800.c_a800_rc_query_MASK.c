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
struct dvb_usb_device {int /*<<< orphan*/  rc_dev; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RC_PROTO_NEC ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int USB_DIR_IN ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_device *d)
{
	int ret = 0;
	u8 *key = FUNC2(5, GFP_KERNEL);
	if (!key)
		return -ENOMEM;

	if (FUNC5(d->udev,FUNC6(d->udev,0),
				0x04, USB_TYPE_VENDOR | USB_DIR_IN, 0, 0, key, 5,
				2000) != 5) {
		ret = -ENODEV;
		goto out;
	}

	/* Note that extended nec and nec32 are dropped */
	if (key[0] == 1)
		FUNC3(d->rc_dev, RC_PROTO_NEC,
			   FUNC0(key[1], key[3]), 0);
	else if (key[0] == 2)
		FUNC4(d->rc_dev);
out:
	FUNC1(key);
	return ret;
}
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
typedef  int /*<<< orphan*/  u16 ;
struct rtsx_ucr {int /*<<< orphan*/  pusb_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTSX_USB_REQ_POLL ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ polling_pipe ; 
 int FUNC2 (struct rtsx_ucr*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct rtsx_ucr *ucr, u16 *status)
{
	int ret;
	u16 *buf;

	if (!status)
		return -EINVAL;

	if (polling_pipe == 0) {
		buf = FUNC1(sizeof(u16), GFP_KERNEL);
		if (!buf)
			return -ENOMEM;

		ret = FUNC3(ucr->pusb_dev,
				FUNC4(ucr->pusb_dev, 0),
				RTSX_USB_REQ_POLL,
				USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				0, 0, buf, 2, 100);
		*status = *buf;

		FUNC0(buf);
	} else {
		ret = FUNC2(ucr, status);
	}

	/* usb_control_msg may return positive when success */
	if (ret < 0)
		return ret;

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct brcmf_usbdev_info {int ctl_completed; int /*<<< orphan*/  ctl_op; TYPE_1__ bus_pub; } ;

/* Variables and functions */
 scalar_t__ BRCMFMAC_USB_STATE_UP ; 
 int EIO ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct brcmf_usbdev_info* FUNC2 (struct device*) ; 
 int FUNC3 (struct brcmf_usbdev_info*) ; 
 int FUNC4 (struct brcmf_usbdev_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev, u8 *buf, u32 len)
{
	int err = 0;
	int timeout = 0;
	struct brcmf_usbdev_info *devinfo = FUNC2(dev);

	FUNC0(USB, "Enter\n");
	if (devinfo->bus_pub.state != BRCMFMAC_USB_STATE_UP)
		return -EIO;

	if (FUNC6(0, &devinfo->ctl_op))
		return -EIO;

	devinfo->ctl_completed = false;
	err = FUNC4(devinfo, buf, len);
	if (err) {
		FUNC1("fail %d bytes: %d\n", err, len);
		FUNC5(0, &devinfo->ctl_op);
		return err;
	}
	timeout = FUNC3(devinfo);
	FUNC5(0, &devinfo->ctl_op);
	if (!timeout) {
		FUNC1("Txctl wait timed out\n");
		err = -EIO;
	}
	return err;
}
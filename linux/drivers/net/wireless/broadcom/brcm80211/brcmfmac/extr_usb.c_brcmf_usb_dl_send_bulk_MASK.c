#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_complete_t ;
struct brcmf_usbdev_info {int ctl_completed; TYPE_1__* bulk_urb; int /*<<< orphan*/  tx_pipe; int /*<<< orphan*/  usbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct brcmf_usbdev_info*) ; 
 scalar_t__ brcmf_usb_sync_complete ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct brcmf_usbdev_info*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct brcmf_usbdev_info *devinfo, void *buffer, int len)
{
	int ret;

	if ((devinfo == NULL) || (devinfo->bulk_urb == NULL))
		return -EINVAL;

	/* Prepare the URB */
	FUNC2(devinfo->bulk_urb, devinfo->usbdev,
			  devinfo->tx_pipe, buffer, len,
			  (usb_complete_t)brcmf_usb_sync_complete, devinfo);

	devinfo->bulk_urb->transfer_flags |= URB_ZERO_PACKET;

	devinfo->ctl_completed = false;
	ret = FUNC3(devinfo->bulk_urb, GFP_ATOMIC);
	if (ret) {
		FUNC0("usb_submit_urb failed %d\n", ret);
		return ret;
	}
	ret = FUNC1(devinfo);
	return (ret == 0);
}
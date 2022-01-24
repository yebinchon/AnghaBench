#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_complete_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_5__ {int bRequestType; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  wLength; } ;
struct brcmf_usbdev_info {int ctl_completed; TYPE_2__* ctl_urb; TYPE_1__ ctl_read; int /*<<< orphan*/  usbdev; } ;
struct TYPE_6__ {int transfer_buffer_length; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_usbdev_info*) ; 
 scalar_t__ brcmf_usb_sync_complete ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,void*,int,int /*<<< orphan*/ ,struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct brcmf_usbdev_info *devinfo, u8 cmd,
			    void *buffer, int buflen)
{
	int ret;
	char *tmpbuf;
	u16 size;

	if ((!devinfo) || (devinfo->ctl_urb == NULL))
		return -EINVAL;

	tmpbuf = FUNC4(buflen, GFP_ATOMIC);
	if (!tmpbuf)
		return -ENOMEM;

	size = buflen;
	devinfo->ctl_urb->transfer_buffer_length = size;

	devinfo->ctl_read.wLength = FUNC2(&size);
	devinfo->ctl_read.bRequestType = USB_DIR_IN | USB_TYPE_VENDOR |
		USB_RECIP_INTERFACE;
	devinfo->ctl_read.bRequest = cmd;

	FUNC6(devinfo->ctl_urb,
		devinfo->usbdev,
		FUNC8(devinfo->usbdev, 0),
		(unsigned char *) &devinfo->ctl_read,
		(void *) tmpbuf, size,
		(usb_complete_t)brcmf_usb_sync_complete, devinfo);

	devinfo->ctl_completed = false;
	ret = FUNC9(devinfo->ctl_urb, GFP_ATOMIC);
	if (ret < 0) {
		FUNC0("usb_submit_urb failed %d\n", ret);
		goto finalize;
	}

	if (!FUNC1(devinfo)) {
		FUNC7(devinfo->ctl_urb);
		ret = -ETIMEDOUT;
	} else {
		FUNC5(buffer, tmpbuf, buflen);
	}

finalize:
	FUNC3(tmpbuf);
	return ret;
}
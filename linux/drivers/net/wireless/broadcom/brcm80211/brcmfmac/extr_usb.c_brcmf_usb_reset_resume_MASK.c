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
struct usb_interface {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct brcmf_usbdev_info {int dummy; } ;
struct brcmf_fw_request {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct brcmf_fw_request*,int /*<<< orphan*/ ) ; 
 struct brcmf_usbdev_info* FUNC2 (int /*<<< orphan*/ *) ; 
 struct brcmf_fw_request* FUNC3 (struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  brcmf_usb_probe_phase2 ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_fw_request*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct usb_device *usb = FUNC4(intf);
	struct brcmf_usbdev_info *devinfo = FUNC2(&usb->dev);
	struct brcmf_fw_request *fwreq;
	int ret;

	FUNC0(USB, "Enter\n");

	fwreq = FUNC3(devinfo);
	if (!fwreq)
		return -ENOMEM;

	ret = FUNC1(&usb->dev, fwreq, brcmf_usb_probe_phase2);
	if (ret < 0)
		FUNC5(fwreq);

	return ret;
}
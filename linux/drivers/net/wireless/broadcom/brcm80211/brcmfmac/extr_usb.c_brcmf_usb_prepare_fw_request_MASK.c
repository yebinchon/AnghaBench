#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  chiprev; int /*<<< orphan*/  devid; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; int /*<<< orphan*/  fw_name; } ;
struct brcmf_fw_request {TYPE_2__* items; } ;
struct brcmf_fw_name {char* member_0; int /*<<< orphan*/  member_1; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_fw_name*) ; 
 int /*<<< orphan*/  BRCMF_FW_TYPE_BINARY ; 
 size_t BRCMF_USB_FW_CODE ; 
 struct brcmf_fw_request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct brcmf_fw_name*,int /*<<< orphan*/ ,struct brcmf_fw_name*,int /*<<< orphan*/ ) ; 
 struct brcmf_fw_name* brcmf_usb_fwnames ; 

__attribute__((used)) static struct brcmf_fw_request *
FUNC2(struct brcmf_usbdev_info *devinfo)
{
	struct brcmf_fw_request *fwreq;
	struct brcmf_fw_name fwnames[] = {
		{ ".bin", devinfo->fw_name },
	};

	fwreq = FUNC1(devinfo->bus_pub.devid,
				       devinfo->bus_pub.chiprev,
				       brcmf_usb_fwnames,
				       FUNC0(brcmf_usb_fwnames),
				       fwnames, FUNC0(fwnames));
	if (!fwreq)
		return NULL;

	fwreq->items[BRCMF_USB_FW_CODE].type = BRCMF_FW_TYPE_BINARY;

	return fwreq;
}
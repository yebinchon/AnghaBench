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
struct urb {scalar_t__ status; int /*<<< orphan*/  actual_length; scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct brcmf_usbreq {struct sk_buff* skb; struct brcmf_usbdev_info* devinfo; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct brcmf_usbdev_info {int /*<<< orphan*/  rx_freeq; int /*<<< orphan*/  dev; TYPE_1__ bus_pub; } ;

/* Variables and functions */
 scalar_t__ BRCMFMAC_USB_STATE_UP ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_usbdev_info*,struct brcmf_usbreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_usbdev_info*,int /*<<< orphan*/ *,struct brcmf_usbreq*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_usbdev_info*,struct brcmf_usbreq*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct brcmf_usbreq  *req = (struct brcmf_usbreq *)urb->context;
	struct brcmf_usbdev_info *devinfo = req->devinfo;
	struct sk_buff *skb;

	FUNC0(USB, "Enter, urb->status=%d\n", urb->status);
	FUNC2(devinfo, req);
	skb = req->skb;
	req->skb = NULL;

	/* zero length packets indicate usb "failure". Do not refill */
	if (urb->status != 0 || !urb->actual_length) {
		FUNC5(skb);
		FUNC3(devinfo, &devinfo->rx_freeq, req, NULL);
		return;
	}

	if (devinfo->bus_pub.state == BRCMFMAC_USB_STATE_UP) {
		FUNC6(skb, urb->actual_length);
		FUNC1(devinfo->dev, skb, true);
		FUNC4(devinfo, req);
	} else {
		FUNC5(skb);
		FUNC3(devinfo, &devinfo->rx_freeq, req, NULL);
	}
	return;

}
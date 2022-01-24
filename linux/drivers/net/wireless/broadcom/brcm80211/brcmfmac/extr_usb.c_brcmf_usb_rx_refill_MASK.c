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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct brcmf_usbreq {struct sk_buff* skb; int /*<<< orphan*/  urb; struct brcmf_usbdev_info* devinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_mtu; } ;
struct brcmf_usbdev_info {int /*<<< orphan*/  rx_freeq; int /*<<< orphan*/  rx_postq; int /*<<< orphan*/  rx_pipe; int /*<<< orphan*/  usbdev; TYPE_1__ bus_pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_usbdev_info*,struct brcmf_usbreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_usbdev_info*,int /*<<< orphan*/ *,struct brcmf_usbreq*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  brcmf_usb_rx_complete ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct brcmf_usbreq*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct brcmf_usbdev_info *devinfo,
				struct brcmf_usbreq  *req)
{
	struct sk_buff *skb;
	int ret;

	if (!req || !devinfo)
		return;

	skb = FUNC3(devinfo->bus_pub.bus_mtu);
	if (!skb) {
		FUNC1(devinfo, &devinfo->rx_freeq, req, NULL);
		return;
	}
	req->skb = skb;

	FUNC5(req->urb, devinfo->usbdev, devinfo->rx_pipe,
			  skb->data, FUNC4(skb), brcmf_usb_rx_complete,
			  req);
	req->devinfo = devinfo;
	FUNC1(devinfo, &devinfo->rx_postq, req, NULL);

	ret = FUNC6(req->urb, GFP_ATOMIC);
	if (ret) {
		FUNC0(devinfo, req);
		FUNC2(req->skb);
		req->skb = NULL;
		FUNC1(devinfo, &devinfo->rx_freeq, req, NULL);
	}
	return;
}
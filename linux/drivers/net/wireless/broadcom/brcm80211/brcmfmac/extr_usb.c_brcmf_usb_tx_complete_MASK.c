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
struct urb {scalar_t__ status; scalar_t__ context; } ;
struct brcmf_usbreq {int /*<<< orphan*/ * skb; struct brcmf_usbdev_info* devinfo; } ;
struct brcmf_usbdev_info {scalar_t__ tx_freecount; scalar_t__ tx_high_watermark; int tx_flowblock; int /*<<< orphan*/  tx_flowblock_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_freeq; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_usbdev_info*,struct brcmf_usbreq*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_usbdev_info*,int /*<<< orphan*/ *,struct brcmf_usbreq*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct brcmf_usbreq *req = (struct brcmf_usbreq *)urb->context;
	struct brcmf_usbdev_info *devinfo = req->devinfo;
	unsigned long flags;

	FUNC0(USB, "Enter, urb->status=%d, skb=%p\n", urb->status,
		  req->skb);
	FUNC3(devinfo, req);

	FUNC1(devinfo->dev, req->skb, urb->status == 0);
	req->skb = NULL;
	FUNC4(devinfo, &devinfo->tx_freeq, req, &devinfo->tx_freecount);
	FUNC5(&devinfo->tx_flowblock_lock, flags);
	if (devinfo->tx_freecount > devinfo->tx_high_watermark &&
		devinfo->tx_flowblock) {
		FUNC2(devinfo->dev, false);
		devinfo->tx_flowblock = false;
	}
	FUNC6(&devinfo->tx_flowblock_lock, flags);
}
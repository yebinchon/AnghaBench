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
struct brcmf_usbdev_info {scalar_t__ settings; int /*<<< orphan*/  rx_reqs; int /*<<< orphan*/  tx_reqs; int /*<<< orphan*/  bulk_urb; int /*<<< orphan*/  ctl_urb; int /*<<< orphan*/  tx_freeq; int /*<<< orphan*/  rx_freeq; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct brcmf_usbdev_info *devinfo)
{
	FUNC0(USB, "Enter, devinfo %p\n", devinfo);

	/* free the URBS */
	FUNC2(&devinfo->rx_freeq);
	FUNC2(&devinfo->tx_freeq);

	FUNC4(devinfo->ctl_urb);
	FUNC4(devinfo->bulk_urb);

	FUNC3(devinfo->tx_reqs);
	FUNC3(devinfo->rx_reqs);

	if (devinfo->settings)
		FUNC1(devinfo->settings);
}
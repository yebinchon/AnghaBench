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
struct urb {int /*<<< orphan*/  status; scalar_t__ context; } ;
struct brcmf_usbdev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_USB_CBCTL_WRITE ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_usbdev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct urb *urb)
{
	struct brcmf_usbdev_info *devinfo =
		(struct brcmf_usbdev_info *)urb->context;

	FUNC0(USB, "Enter\n");
	FUNC1(devinfo, BRCMF_USB_CBCTL_WRITE,
		urb->status);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_driver {int dummy; } ;
struct TYPE_4__ {struct device_driver driver; } ;
struct TYPE_5__ {TYPE_1__ drvwrap; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  brcmf_usb_reset_device ; 
 TYPE_2__ brcmf_usbdrvr ; 
 int FUNC1 (struct device_driver*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(void)
{
	struct device_driver *drv = &brcmf_usbdrvr.drvwrap.driver;
	int ret;

	FUNC0(USB, "Enter\n");
	ret = FUNC1(drv, NULL, NULL,
				     brcmf_usb_reset_device);
	FUNC2(&brcmf_usbdrvr);
}
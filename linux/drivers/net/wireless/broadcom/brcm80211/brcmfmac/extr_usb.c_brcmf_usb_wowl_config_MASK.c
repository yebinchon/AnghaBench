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
struct device {int dummy; } ;
struct brcmf_usbdev_info {int wowl_enabled; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct brcmf_usbdev_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct device *dev, bool enabled)
{
	struct brcmf_usbdev_info *devinfo = FUNC1(dev);

	FUNC0(USB, "Configuring WOWL, enabled=%d\n", enabled);
	devinfo->wowl_enabled = enabled;
	if (enabled)
		FUNC2(devinfo->dev, true);
	else
		FUNC2(devinfo->dev, false);
}
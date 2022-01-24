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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;
struct imon_context {scalar_t__ display_type; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ IMON_DISPLAY_TYPE_LCD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  imon_display_attr_group ; 
 int /*<<< orphan*/  imon_lcd_class ; 
 int /*<<< orphan*/  imon_vfd_class ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct imon_context *ictx,
			      struct usb_interface *intf)
{
	int ret;

	FUNC0(ictx->dev, "Registering iMON display with sysfs\n");

	/* set up sysfs entry for built-in clock */
	ret = FUNC3(&intf->dev.kobj, &imon_display_attr_group);
	if (ret)
		FUNC1(ictx->dev, "Could not create display sysfs entries(%d)",
			ret);

	if (ictx->display_type == IMON_DISPLAY_TYPE_LCD)
		ret = FUNC4(intf, &imon_lcd_class);
	else
		ret = FUNC4(intf, &imon_vfd_class);
	if (ret)
		/* Not a fatal error, so ignore */
		FUNC2(ictx->dev, "could not get a minor number for display\n");

}
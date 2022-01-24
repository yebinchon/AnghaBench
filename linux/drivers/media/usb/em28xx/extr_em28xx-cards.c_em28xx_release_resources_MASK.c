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
struct usb_device {int dummy; } ;
struct em28xx {scalar_t__ ts; int /*<<< orphan*/  lock; int /*<<< orphan*/  devno; scalar_t__ def_i2c_bus; int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 scalar_t__ PRIMARY_TS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  em28xx_devused ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*) ; 
 struct usb_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 

__attribute__((used)) static void FUNC7(struct em28xx *dev)
{
	struct usb_device *udev = FUNC3(dev->intf);

	/*FIXME: I2C IR should be disconnected */

	FUNC4(&dev->lock);

	FUNC2(dev);

	if (dev->def_i2c_bus)
		FUNC1(dev, 1);
	FUNC1(dev, 0);

	if (dev->ts == PRIMARY_TS)
		FUNC6(udev);

	/* Mark device as unused */
	FUNC0(dev->devno, em28xx_devused);

	FUNC5(&dev->lock);
}
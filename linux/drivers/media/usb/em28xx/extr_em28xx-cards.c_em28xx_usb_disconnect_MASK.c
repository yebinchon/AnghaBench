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
struct usb_interface {int dummy; } ;
struct em28xx {int disconnected; int /*<<< orphan*/  ref; struct em28xx* dev_next; int /*<<< orphan*/  name; TYPE_1__* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 
 int /*<<< orphan*/  em28xx_free_device ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct em28xx* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct em28xx *dev;

	dev = FUNC5(intf);
	FUNC6(intf, NULL);

	if (!dev)
		return;

	if (dev->dev_next) {
		dev->dev_next->disconnected = 1;
		FUNC0(&dev->intf->dev, "Disconnecting %s\n",
			 dev->dev_next->name);
	}

	dev->disconnected = 1;

	FUNC0(&dev->intf->dev, "Disconnecting %s\n", dev->name);

	FUNC3(dev);

	FUNC1(dev);

	if (dev->dev_next)
		FUNC2(dev->dev_next);
	FUNC2(dev);

	if (dev->dev_next) {
		FUNC4(&dev->dev_next->ref, em28xx_free_device);
		dev->dev_next = NULL;
	}
	FUNC4(&dev->ref, em28xx_free_device);
}
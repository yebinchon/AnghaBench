#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbnet {TYPE_2__* udev; TYPE_1__* net; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*) ; 
 int FUNC5 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev)
{
	int ret;

	/* re-configure known MAC (suspend case etc.) */
	ret = FUNC1(dev, dev->net->dev_addr);
	if (ret) {
		FUNC0(&dev->udev->dev, "Cannot set MAC address\n");
		goto out;
	}

	/* Set up PHY */
	ret = FUNC5(dev, 0);
	if (ret) {
		FUNC0(&dev->udev->dev, "Cannot set autoneg\n");
		goto out;
	}

	FUNC3(dev);
	FUNC2(dev);

	FUNC4(dev);
	ret = 0;
out:
	return ret;
}
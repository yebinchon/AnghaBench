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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct ipheth_device {int /*<<< orphan*/  net; int /*<<< orphan*/  ctrl_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipheth_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipheth_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ipheth_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct ipheth_device *dev;

	dev = FUNC6(intf);
	if (dev != NULL) {
		FUNC5(dev->net);
		FUNC3(dev);
		FUNC2(dev);
		FUNC4(dev->ctrl_buf);
		FUNC1(dev->net);
	}
	FUNC7(intf, NULL);
	FUNC0(&intf->dev, "Apple iPhone USB Ethernet now disconnected\n");
}
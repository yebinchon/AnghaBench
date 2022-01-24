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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct peak_usb_device {TYPE_1__* adapter; int /*<<< orphan*/ * next_siblings; int /*<<< orphan*/  cmd_buf; int /*<<< orphan*/  state; struct peak_usb_device* prev_siblings; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dev_free ) (struct peak_usb_device*) ;} ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int /*<<< orphan*/  PCAN_USB_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct peak_usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct peak_usb_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct peak_usb_device *dev;
	struct peak_usb_device *dev_prev_siblings;

	/* unregister as many netdev devices as siblings */
	for (dev = FUNC6(intf); dev; dev = dev_prev_siblings) {
		struct net_device *netdev = dev->netdev;
		char name[IFNAMSIZ];

		dev_prev_siblings = dev->prev_siblings;
		dev->state &= ~PCAN_USB_STATE_CONNECTED;
		FUNC3(name, netdev->name, IFNAMSIZ);

		FUNC5(netdev);

		FUNC2(dev->cmd_buf);
		dev->next_siblings = NULL;
		if (dev->adapter->dev_free)
			dev->adapter->dev_free(dev);

		FUNC1(netdev);
		FUNC0(&intf->dev, "%s removed\n", name);
	}

	FUNC7(intf, NULL);
}
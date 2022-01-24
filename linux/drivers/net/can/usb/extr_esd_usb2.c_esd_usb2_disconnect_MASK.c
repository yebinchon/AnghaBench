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
struct net_device {int dummy; } ;
struct esd_usb2 {int net_count; TYPE_1__** nets; } ;
struct TYPE_2__ {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_firmware ; 
 int /*<<< orphan*/  dev_attr_hardware ; 
 int /*<<< orphan*/  dev_attr_nets ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct esd_usb2*) ; 
 int /*<<< orphan*/  FUNC3 (struct esd_usb2*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct esd_usb2* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct esd_usb2 *dev = FUNC5(intf);
	struct net_device *netdev;
	int i;

	FUNC0(&intf->dev, &dev_attr_firmware);
	FUNC0(&intf->dev, &dev_attr_hardware);
	FUNC0(&intf->dev, &dev_attr_nets);

	FUNC6(intf, NULL);

	if (dev) {
		for (i = 0; i < dev->net_count; i++) {
			if (dev->nets[i]) {
				netdev = dev->nets[i]->netdev;
				FUNC4(netdev);
				FUNC1(netdev);
			}
		}
		FUNC3(dev);
		FUNC2(dev);
	}
}
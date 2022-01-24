#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usbnet {int /*<<< orphan*/  stats64; int /*<<< orphan*/  padding_pkt; int /*<<< orphan*/  interrupt; TYPE_4__* driver_info; int /*<<< orphan*/  deferred; int /*<<< orphan*/  kevent; struct net_device* net; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct usb_interface {TYPE_2__ dev; } ;
struct usb_device {int /*<<< orphan*/  devpath; TYPE_3__* bus; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* unbind ) (struct usbnet*,struct usb_interface*) ;int /*<<< orphan*/  description; } ;
struct TYPE_7__ {int /*<<< orphan*/  bus_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,int /*<<< orphan*/ *) ; 

void FUNC13 (struct usb_interface *intf)
{
	struct usbnet		*dev;
	struct usb_device	*xdev;
	struct net_device	*net;

	dev = FUNC9(intf);
	FUNC12(intf, NULL);
	if (!dev)
		return;

	xdev = FUNC3 (intf);

	FUNC5(dev, probe, dev->net, "unregister '%s' usb-%s-%s, %s\n",
		   intf->dev.driver->name,
		   xdev->bus->bus_name, xdev->devpath,
		   dev->driver_info->description);

	net = dev->net;
	FUNC7 (net);

	FUNC0(&dev->kevent);

	FUNC11(&dev->deferred);

	if (dev->driver_info->unbind)
		dev->driver_info->unbind (dev, intf);

	FUNC10(dev->interrupt);
	FUNC8(dev->interrupt);
	FUNC4(dev->padding_pkt);

	FUNC2(dev->stats64);
	FUNC1(net);
}
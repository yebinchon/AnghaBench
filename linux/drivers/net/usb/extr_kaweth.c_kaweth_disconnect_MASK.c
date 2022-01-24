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
struct net_device {int dummy; } ;
struct kaweth_device {int /*<<< orphan*/  intbufferhandle; scalar_t__ intbuffer; int /*<<< orphan*/  dev; int /*<<< orphan*/  rxbufferhandle; scalar_t__ rx_buf; int /*<<< orphan*/  irq_urb; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  rx_urb; struct net_device* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTBUFFERSIZE ; 
 int /*<<< orphan*/  KAWETH_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct kaweth_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct kaweth_device *kaweth = FUNC6(intf);
	struct net_device *netdev;

	FUNC7(intf, NULL);
	if (!kaweth) {
		FUNC0(&intf->dev, "unregistering non-existent device\n");
		return;
	}
	netdev = kaweth->net;

	FUNC2(kaweth->net, "Unregistering net device\n");
	FUNC3(netdev);

	FUNC5(kaweth->rx_urb);
	FUNC5(kaweth->tx_urb);
	FUNC5(kaweth->irq_urb);

	FUNC4(kaweth->dev, KAWETH_BUF_SIZE, (void *)kaweth->rx_buf, kaweth->rxbufferhandle);
	FUNC4(kaweth->dev, INTBUFFERSIZE, (void *)kaweth->intbuffer, kaweth->intbufferhandle);

	FUNC1(netdev);
}
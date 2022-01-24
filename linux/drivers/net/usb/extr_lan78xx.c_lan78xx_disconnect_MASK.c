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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan78xx_net {int /*<<< orphan*/  urb_intr; int /*<<< orphan*/  deferred; int /*<<< orphan*/  wq; struct net_device* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_KSZ9031RNX ; 
 int /*<<< orphan*/  PHY_LAN8835 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct lan78xx_net*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 
 scalar_t__ FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct lan78xx_net* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct usb_interface *intf)
{
	struct lan78xx_net *dev;
	struct usb_device *udev;
	struct net_device *net;
	struct phy_device *phydev;

	dev = FUNC10(intf);
	FUNC14(intf, NULL);
	if (!dev)
		return;

	udev = FUNC3(intf);
	net = dev->net;
	phydev = net->phydev;

	FUNC7(PHY_KSZ9031RNX, 0xfffffff0);
	FUNC7(PHY_LAN8835, 0xfffffff0);

	FUNC5(net->phydev);

	if (FUNC6(phydev))
		FUNC1(phydev);

	FUNC8(net);

	FUNC0(&dev->wq);

	FUNC13(&dev->deferred);

	FUNC4(dev, intf);

	FUNC11(dev->urb_intr);
	FUNC9(dev->urb_intr);

	FUNC2(net);
	FUNC12(udev);
}
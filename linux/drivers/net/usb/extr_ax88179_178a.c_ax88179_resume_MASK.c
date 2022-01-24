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
typedef  int u8 ;
typedef  int u16 ;
struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_ACCESS_MAC ; 
 int /*<<< orphan*/  AX_CLK_SELECT ; 
 int AX_CLK_SELECT_ACS ; 
 int AX_CLK_SELECT_BCS ; 
 int /*<<< orphan*/  AX_PHYPWR_RSTCTL ; 
 int AX_PHYPWR_RSTCTL_IPRL ; 
 int /*<<< orphan*/  AX_RX_CTL ; 
 int AX_RX_CTL_AB ; 
 int AX_RX_CTL_AMALL ; 
 int AX_RX_CTL_AP ; 
 int AX_RX_CTL_DROPCRCERR ; 
 int AX_RX_CTL_IPE ; 
 int AX_RX_CTL_START ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct usbnet* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC8(struct usb_interface *intf)
{
	struct usbnet *dev = FUNC5(intf);
	u16 tmp16;
	u8 tmp8;

	FUNC6(dev, 0, 0);

	/* Power up ethernet PHY */
	tmp16 = 0;
	FUNC2(dev, AX_ACCESS_MAC, AX_PHYPWR_RSTCTL,
			       2, 2, &tmp16);
	FUNC4(1000);

	tmp16 = AX_PHYPWR_RSTCTL_IPRL;
	FUNC2(dev, AX_ACCESS_MAC, AX_PHYPWR_RSTCTL,
			       2, 2, &tmp16);
	FUNC3(200);

	/* Ethernet PHY Auto Detach*/
	FUNC0(dev, 1);

	/* Enable clock */
	FUNC1(dev, AX_ACCESS_MAC,  AX_CLK_SELECT, 1, 1, &tmp8);
	tmp8 |= AX_CLK_SELECT_ACS | AX_CLK_SELECT_BCS;
	FUNC2(dev, AX_ACCESS_MAC, AX_CLK_SELECT, 1, 1, &tmp8);
	FUNC3(100);

	/* Configure RX control register => start operation */
	tmp16 = AX_RX_CTL_DROPCRCERR | AX_RX_CTL_IPE | AX_RX_CTL_START |
		AX_RX_CTL_AP | AX_RX_CTL_AMALL | AX_RX_CTL_AB;
	FUNC2(dev, AX_ACCESS_MAC, AX_RX_CTL, 2, 2, &tmp16);

	return FUNC7(intf);
}
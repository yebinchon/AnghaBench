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
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  AX_ACCESS_MAC ; 
 int /*<<< orphan*/  AX_CLK_SELECT ; 
 int AX_MEDIUM_RECEIVE_EN ; 
 int /*<<< orphan*/  AX_MEDIUM_STATUS_MODE ; 
 int /*<<< orphan*/  AX_PHYPWR_RSTCTL ; 
 int AX_PHYPWR_RSTCTL_BZ ; 
 int AX_PHYPWR_RSTCTL_IPRL ; 
 int /*<<< orphan*/  AX_RX_CTL ; 
 int AX_RX_CTL_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 struct usbnet* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf, pm_message_t message)
{
	struct usbnet *dev = FUNC2(intf);
	u16 tmp16;
	u8 tmp8;

	FUNC3(intf, message);

	/* Disable RX path */
	FUNC0(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
			      2, 2, &tmp16);
	tmp16 &= ~AX_MEDIUM_RECEIVE_EN;
	FUNC1(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
			       2, 2, &tmp16);

	/* Force bulk-in zero length */
	FUNC0(dev, AX_ACCESS_MAC, AX_PHYPWR_RSTCTL,
			      2, 2, &tmp16);

	tmp16 |= AX_PHYPWR_RSTCTL_BZ | AX_PHYPWR_RSTCTL_IPRL;
	FUNC1(dev, AX_ACCESS_MAC, AX_PHYPWR_RSTCTL,
			       2, 2, &tmp16);

	/* change clock */
	tmp8 = 0;
	FUNC1(dev, AX_ACCESS_MAC, AX_CLK_SELECT, 1, 1, &tmp8);

	/* Configure RX control register => stop operation */
	tmp16 = AX_RX_CTL_STOP;
	FUNC1(dev, AX_ACCESS_MAC, AX_RX_CTL, 2, 2, &tmp16);

	return 0;
}
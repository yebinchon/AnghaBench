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
typedef  int u16 ;
struct usbnet {int rx_urb_size; int hard_mtu; TYPE_1__* net; } ;
struct TYPE_2__ {int mtu; } ;

/* Variables and functions */
 int AX_MEDIUM_JFE ; 
 int AX_RX_CTL_MFB_16384 ; 
 int AX_RX_CTL_MFB_2048 ; 
 int AX_RX_CTL_MFB_4096 ; 
 int AX_RX_CTL_MFB_8192 ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*) ; 

__attribute__((used)) static void FUNC5(struct usbnet *dev)
{
	u16 mfb = AX_RX_CTL_MFB_16384;
	u16 rxctl;
	u16 medium;
	int old_rx_urb_size = dev->rx_urb_size;

	if (dev->hard_mtu < 2048) {
		dev->rx_urb_size = 2048;
		mfb = AX_RX_CTL_MFB_2048;
	} else if (dev->hard_mtu < 4096) {
		dev->rx_urb_size = 4096;
		mfb = AX_RX_CTL_MFB_4096;
	} else if (dev->hard_mtu < 8192) {
		dev->rx_urb_size = 8192;
		mfb = AX_RX_CTL_MFB_8192;
	} else if (dev->hard_mtu < 16384) {
		dev->rx_urb_size = 16384;
		mfb = AX_RX_CTL_MFB_16384;
	}

	rxctl = FUNC1(dev, 0);
	FUNC3(dev, (rxctl & ~AX_RX_CTL_MFB_16384) | mfb, 0);

	medium = FUNC0(dev, 0);
	if (dev->net->mtu > 1500)
		medium |= AX_MEDIUM_JFE;
	else
		medium &= ~AX_MEDIUM_JFE;
	FUNC2(dev, medium, 0);

	if (dev->rx_urb_size > old_rx_urb_size)
		FUNC4(dev);
}
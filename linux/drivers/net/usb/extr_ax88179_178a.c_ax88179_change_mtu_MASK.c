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
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {scalar_t__ hard_mtu; } ;
struct net_device {int mtu; scalar_t__ hard_header_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_ACCESS_MAC ; 
 int /*<<< orphan*/  AX_MEDIUM_JUMBO_EN ; 
 int /*<<< orphan*/  AX_MEDIUM_STATUS_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*) ; 

__attribute__((used)) static int FUNC4(struct net_device *net, int new_mtu)
{
	struct usbnet *dev = FUNC2(net);
	u16 tmp16;

	net->mtu = new_mtu;
	dev->hard_mtu = net->mtu + net->hard_header_len;

	if (net->mtu > 1500) {
		FUNC0(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
				 2, 2, &tmp16);
		tmp16 |= AX_MEDIUM_JUMBO_EN;
		FUNC1(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
				  2, 2, &tmp16);
	} else {
		FUNC0(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
				 2, 2, &tmp16);
		tmp16 &= ~AX_MEDIUM_JUMBO_EN;
		FUNC1(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
				  2, 2, &tmp16);
	}

	/* max qlen depend on hard_mtu and rx_urb_size */
	FUNC3(dev);

	return 0;
}
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
struct usbnet {int maxpacket; int hard_mtu; int /*<<< orphan*/  net; } ;
struct net_device {int hard_header_len; int mtu; } ;

/* Variables and functions */
 int EDOM ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*) ; 

__attribute__((used)) static int FUNC4(struct net_device *net, int new_mtu)
{
	struct usbnet *dev = FUNC2(net);
	int ll_mtu = new_mtu + net->hard_header_len + 4;

	FUNC1(dev->net, "ax88178_change_mtu() new_mtu=%d\n", new_mtu);

	if ((ll_mtu % dev->maxpacket) == 0)
		return -EDOM;

	net->mtu = new_mtu;
	dev->hard_mtu = net->mtu + net->hard_header_len;
	FUNC0(dev);

	/* max qlen depend on hard_mtu and rx_urb_size */
	FUNC3(dev);

	return 0;
}
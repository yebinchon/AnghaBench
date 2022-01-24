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
struct usbnet {int hard_mtu; int rx_urb_size; int maxpacket; } ;
struct net_device {int hard_header_len; int mtu; } ;

/* Variables and functions */
 int EDOM ; 
 struct usbnet* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*) ; 

int FUNC5 (struct net_device *net, int new_mtu)
{
	struct usbnet	*dev = FUNC0(net);
	int		ll_mtu = new_mtu + net->hard_header_len;
	int		old_hard_mtu = dev->hard_mtu;
	int		old_rx_urb_size = dev->rx_urb_size;

	// no second zero-length packet read wanted after mtu-sized packets
	if ((ll_mtu % dev->maxpacket) == 0)
		return -EDOM;
	net->mtu = new_mtu;

	dev->hard_mtu = net->mtu + net->hard_header_len;
	if (dev->rx_urb_size == old_hard_mtu) {
		dev->rx_urb_size = dev->hard_mtu;
		if (dev->rx_urb_size > old_rx_urb_size) {
			FUNC1(dev);
			FUNC3(dev);
			FUNC2(dev);
		}
	}

	/* max qlen depend on hard_mtu and rx_urb_size */
	FUNC4(dev);

	return 0;
}
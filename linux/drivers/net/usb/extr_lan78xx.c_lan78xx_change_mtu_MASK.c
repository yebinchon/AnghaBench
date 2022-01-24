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
struct net_device {int hard_header_len; int mtu; } ;
struct lan78xx_net {int hard_mtu; int rx_urb_size; int maxpacket; int /*<<< orphan*/  bh; int /*<<< orphan*/  rxq; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int EDOM ; 
 scalar_t__ VLAN_ETH_HLEN ; 
 int FUNC0 (struct lan78xx_net*,scalar_t__) ; 
 struct lan78xx_net* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lan78xx_net*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, int new_mtu)
{
	struct lan78xx_net *dev = FUNC1(netdev);
	int ll_mtu = new_mtu + netdev->hard_header_len;
	int old_hard_mtu = dev->hard_mtu;
	int old_rx_urb_size = dev->rx_urb_size;
	int ret;

	/* no second zero-length packet read wanted after mtu-sized packets */
	if ((ll_mtu % dev->maxpacket) == 0)
		return -EDOM;

	ret = FUNC0(dev, new_mtu + VLAN_ETH_HLEN);

	netdev->mtu = new_mtu;

	dev->hard_mtu = netdev->mtu + netdev->hard_header_len;
	if (dev->rx_urb_size == old_hard_mtu) {
		dev->rx_urb_size = dev->hard_mtu;
		if (dev->rx_urb_size > old_rx_urb_size) {
			if (FUNC2(dev->net)) {
				FUNC4(dev, &dev->rxq);
				FUNC3(&dev->bh);
			}
		}
	}

	return 0;
}
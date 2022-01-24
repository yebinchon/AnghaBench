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
struct usbnet {int /*<<< orphan*/  net; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 struct usbnet* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct usbnet*,scalar_t__) ; 
 int FUNC3 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, int new_mtu)
{
	struct usbnet *dev = FUNC0(netdev);
	int ret;

	ret = FUNC2(dev, new_mtu + ETH_HLEN);
	if (ret < 0) {
		FUNC1(dev->net, "Failed to set mac rx frame length\n");
		return ret;
	}

	return FUNC3(netdev, new_mtu);
}
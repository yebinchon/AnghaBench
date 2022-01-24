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
typedef  int u16 ;
struct net_device {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  rx_creg ;
typedef  int /*<<< orphan*/  rtl8150_t ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  RCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *netdev)
{
	rtl8150_t *dev = FUNC4(netdev);
	u16 rx_creg = 0x9e;

	FUNC5(netdev);
	if (netdev->flags & IFF_PROMISC) {
		rx_creg |= 0x0001;
		FUNC2(&netdev->dev, "%s: promiscuous mode\n", netdev->name);
	} else if (!FUNC3(netdev) ||
		   (netdev->flags & IFF_ALLMULTI)) {
		rx_creg &= 0xfffe;
		rx_creg |= 0x0002;
		FUNC1(&netdev->dev, "%s: allmulti set\n", netdev->name);
	} else {
		/* ~RX_MULTICAST, ~RX_PROMISCUOUS */
		rx_creg &= 0x00fc;
	}
	FUNC0(dev, RCR, sizeof(rx_creg), rx_creg);
	FUNC6(netdev);
}
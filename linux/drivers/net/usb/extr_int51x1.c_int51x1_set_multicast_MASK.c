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
struct usbnet {int /*<<< orphan*/  net; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int PACKET_TYPE_ALL_MULTICAST ; 
 int PACKET_TYPE_BROADCAST ; 
 int PACKET_TYPE_DIRECTED ; 
 int PACKET_TYPE_PROMISCUOUS ; 
 int /*<<< orphan*/  SET_ETHERNET_PACKET_FILTER ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct usbnet *dev = FUNC3(netdev);
	u16 filter = PACKET_TYPE_DIRECTED | PACKET_TYPE_BROADCAST;

	if (netdev->flags & IFF_PROMISC) {
		/* do not expect to see traffic of other PLCs */
		filter |= PACKET_TYPE_PROMISCUOUS;
		FUNC1(dev->net, "promiscuous mode enabled\n");
	} else if (!FUNC2(netdev) ||
		  (netdev->flags & IFF_ALLMULTI)) {
		filter |= PACKET_TYPE_ALL_MULTICAST;
		FUNC0(dev->net, "receive all multicast enabled\n");
	} else {
		/* ~PROMISCUOUS, ~MULTICAST */
		FUNC0(dev->net, "receive own packets only\n");
	}

	FUNC4(dev, SET_ETHERNET_PACKET_FILTER,
			       USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			       filter, 0, NULL, 0);
}
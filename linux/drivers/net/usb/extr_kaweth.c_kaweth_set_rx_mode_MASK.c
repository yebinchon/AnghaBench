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
struct net_device {int flags; } ;
struct kaweth_device {int packet_filter_bitmap; } ;
typedef  int __u16 ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int KAWETH_PACKET_FILTER_ALL_MULTICAST ; 
 int KAWETH_PACKET_FILTER_BROADCAST ; 
 int KAWETH_PACKET_FILTER_DIRECTED ; 
 int KAWETH_PACKET_FILTER_MULTICAST ; 
 int KAWETH_PACKET_FILTER_PROMISCUOUS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct kaweth_device* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *net)
{
	struct kaweth_device *kaweth = FUNC2(net);

	__u16 packet_filter_bitmap = KAWETH_PACKET_FILTER_DIRECTED |
                                     KAWETH_PACKET_FILTER_BROADCAST |
		                     KAWETH_PACKET_FILTER_MULTICAST;

	FUNC0(net, "Setting Rx mode to %d\n", packet_filter_bitmap);

	FUNC3(net);

	if (net->flags & IFF_PROMISC) {
		packet_filter_bitmap |= KAWETH_PACKET_FILTER_PROMISCUOUS;
	}
	else if (!FUNC1(net) || (net->flags & IFF_ALLMULTI)) {
		packet_filter_bitmap |= KAWETH_PACKET_FILTER_ALL_MULTICAST;
	}

	kaweth->packet_filter_bitmap = packet_filter_bitmap;
	FUNC4(net);
}
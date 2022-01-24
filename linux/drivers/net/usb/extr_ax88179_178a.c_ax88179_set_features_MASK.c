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
struct usbnet {int dummy; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  AX_ACCESS_MAC ; 
 int /*<<< orphan*/  AX_RXCOE_CTL ; 
 int AX_RXCOE_IP ; 
 int AX_RXCOE_TCP ; 
 int AX_RXCOE_TCPV6 ; 
 int AX_RXCOE_UDP ; 
 int AX_RXCOE_UDPV6 ; 
 int /*<<< orphan*/  AX_TXCOE_CTL ; 
 int AX_TXCOE_TCP ; 
 int AX_TXCOE_TCPV6 ; 
 int AX_TXCOE_UDP ; 
 int AX_TXCOE_UDPV6 ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *net, netdev_features_t features)
{
	u8 tmp;
	struct usbnet *dev = FUNC2(net);
	netdev_features_t changed = net->features ^ features;

	if (changed & NETIF_F_IP_CSUM) {
		FUNC0(dev, AX_ACCESS_MAC, AX_TXCOE_CTL, 1, 1, &tmp);
		tmp ^= AX_TXCOE_TCP | AX_TXCOE_UDP;
		FUNC1(dev, AX_ACCESS_MAC, AX_TXCOE_CTL, 1, 1, &tmp);
	}

	if (changed & NETIF_F_IPV6_CSUM) {
		FUNC0(dev, AX_ACCESS_MAC, AX_TXCOE_CTL, 1, 1, &tmp);
		tmp ^= AX_TXCOE_TCPV6 | AX_TXCOE_UDPV6;
		FUNC1(dev, AX_ACCESS_MAC, AX_TXCOE_CTL, 1, 1, &tmp);
	}

	if (changed & NETIF_F_RXCSUM) {
		FUNC0(dev, AX_ACCESS_MAC, AX_RXCOE_CTL, 1, 1, &tmp);
		tmp ^= AX_RXCOE_IP | AX_RXCOE_TCP | AX_RXCOE_UDP |
		       AX_RXCOE_TCPV6 | AX_RXCOE_UDPV6;
		FUNC1(dev, AX_ACCESS_MAC, AX_RXCOE_CTL, 1, 1, &tmp);
	}

	return 0;
}
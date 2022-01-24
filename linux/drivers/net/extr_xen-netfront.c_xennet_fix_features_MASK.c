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
struct netfront_info {TYPE_1__* xbdev; } ;
struct net_device {int dummy; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {int /*<<< orphan*/  otherend; } ;

/* Variables and functions */
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 struct netfront_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_features_t FUNC2(struct net_device *dev,
	netdev_features_t features)
{
	struct netfront_info *np = FUNC0(dev);

	if (features & NETIF_F_SG &&
	    !FUNC1(np->xbdev->otherend, "feature-sg", 0))
		features &= ~NETIF_F_SG;

	if (features & NETIF_F_IPV6_CSUM &&
	    !FUNC1(np->xbdev->otherend,
				  "feature-ipv6-csum-offload", 0))
		features &= ~NETIF_F_IPV6_CSUM;

	if (features & NETIF_F_TSO &&
	    !FUNC1(np->xbdev->otherend, "feature-gso-tcpv4", 0))
		features &= ~NETIF_F_TSO;

	if (features & NETIF_F_TSO6 &&
	    !FUNC1(np->xbdev->otherend, "feature-gso-tcpv6", 0))
		features &= ~NETIF_F_TSO6;

	return features;
}
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
struct nicvf {int /*<<< orphan*/  loopback_supported; } ;
struct net_device {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_LOOPBACK ; 
 struct nicvf* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 

__attribute__((used)) static netdev_features_t FUNC2(struct net_device *netdev,
					    netdev_features_t features)
{
	struct nicvf *nic = FUNC0(netdev);

	if ((features & NETIF_F_LOOPBACK) &&
	    FUNC1(netdev) && !nic->loopback_supported)
		features &= ~NETIF_F_LOOPBACK;

	return features;
}
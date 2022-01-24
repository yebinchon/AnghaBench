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
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_LOOPBACK ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, netdev_features_t features)
{
	netdev_features_t changed = dev->features ^ features;

	if ((changed & NETIF_F_LOOPBACK) && FUNC0(dev))
		FUNC1(dev, features);

	return 0;
}
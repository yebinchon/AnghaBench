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
struct netdevsim {int dummy; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_HW_TC ; 
 struct netdevsim* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct netdevsim*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *dev, netdev_features_t features)
{
	struct netdevsim *ns = FUNC0(dev);

	if ((dev->features & NETIF_F_HW_TC) > (features & NETIF_F_HW_TC))
		return FUNC1(ns);

	return 0;
}
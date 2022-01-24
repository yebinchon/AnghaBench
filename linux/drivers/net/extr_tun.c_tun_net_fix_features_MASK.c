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
struct tun_struct {int set_features; } ;
struct net_device {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int TUN_USER_FEATURES ; 
 struct tun_struct* FUNC0 (struct net_device*) ; 

__attribute__((used)) static netdev_features_t FUNC1(struct net_device *dev,
	netdev_features_t features)
{
	struct tun_struct *tun = FUNC0(dev);

	return (features & tun->set_features) | (features & ~TUN_USER_FEATURES);
}
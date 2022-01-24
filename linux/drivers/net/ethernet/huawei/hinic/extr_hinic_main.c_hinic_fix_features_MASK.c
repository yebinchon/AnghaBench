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
struct net_device {int dummy; } ;
struct hinic_dev {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_LRO ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  drv ; 
 struct hinic_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static netdev_features_t FUNC2(struct net_device *netdev,
					    netdev_features_t features)
{
	struct hinic_dev *nic_dev = FUNC0(netdev);

	/* If Rx checksum is disabled, then LRO should also be disabled */
	if (!(features & NETIF_F_RXCSUM)) {
		FUNC1(nic_dev, drv, netdev, "disabling LRO as RXCSUM is off\n");
		features &= ~NETIF_F_LRO;
	}

	return features;
}
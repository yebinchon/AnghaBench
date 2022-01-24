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
struct net_device {int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  mac_addr; } ;
struct ena_com_dev_get_features_ctx {TYPE_1__ dev_attr; } ;
struct ena_adapter {int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  mac_addr; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct ena_com_dev_get_features_ctx*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ena_adapter *adapter,
				     struct ena_com_dev_get_features_ctx *feat)
{
	struct net_device *netdev = adapter->netdev;

	/* Copy mac address */
	if (!FUNC3(feat->dev_attr.mac_addr)) {
		FUNC1(netdev);
		FUNC2(adapter->mac_addr, netdev->dev_addr);
	} else {
		FUNC2(adapter->mac_addr, feat->dev_attr.mac_addr);
		FUNC2(netdev->dev_addr, adapter->mac_addr);
	}

	/* Set offload features */
	FUNC0(feat, netdev);

	adapter->max_mtu = feat->dev_attr.max_mtu;
	netdev->max_mtu = adapter->max_mtu;
	netdev->min_mtu = ENA_MIN_MTU;
}
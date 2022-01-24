#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_host_rds_ring {int dummy; } ;
struct qlcnic_adapter {scalar_t__ is_up; int max_rds_rings; int drv_sds_rings; TYPE_2__* ahw; int /*<<< orphan*/  state; TYPE_1__* recv_ctx; } ;
struct net_device {int features; int /*<<< orphan*/  mtu; } ;
struct TYPE_4__ {scalar_t__ reset_context; scalar_t__ linkup; } ;
struct TYPE_3__ {struct qlcnic_host_rds_ring* rds_rings; } ;

/* Variables and functions */
 int EIO ; 
 int NETIF_F_LRO ; 
 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ; 
 int /*<<< orphan*/  QLCNIC_LRO_ENABLED ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int) ; 
 scalar_t__ FUNC10 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC14(struct qlcnic_adapter *adapter, struct net_device *netdev)
{
	int ring;
	struct qlcnic_host_rds_ring *rds_ring;

	if (adapter->is_up != QLCNIC_ADAPTER_UP_MAGIC)
		return -EIO;

	if (FUNC13(__QLCNIC_DEV_UP, &adapter->state))
		return 0;

	if (FUNC10(adapter))
		return -EIO;

	FUNC6(adapter);

	if (FUNC5(adapter))
		return -EIO;

	for (ring = 0; ring < adapter->max_rds_rings; ring++) {
		rds_ring = &adapter->recv_ctx->rds_rings[ring];
		FUNC9(adapter, rds_ring, ring);
	}

	FUNC11(netdev);
	FUNC4(adapter, netdev->mtu);

	adapter->ahw->linkup = 0;

	if (adapter->drv_sds_rings > 1)
		FUNC3(adapter, 1);

	FUNC1(adapter);

	if (netdev->features & NETIF_F_LRO)
		FUNC2(adapter, QLCNIC_LRO_ENABLED);

	FUNC12(__QLCNIC_DEV_UP, &adapter->state);
	FUNC8(adapter);

	FUNC7(adapter, 1);

	adapter->ahw->reset_context = 0;
	FUNC0(netdev);
	return 0;
}
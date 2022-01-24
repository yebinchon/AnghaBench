#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fnum; } ;
struct qlcnic_adapter {scalar_t__ is_up; int drv_tx_rings; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/  flags; TYPE_3__* ahw; TYPE_1__ fhash; int /*<<< orphan*/  state; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* sriov; scalar_t__ linkup; } ;
struct TYPE_5__ {int /*<<< orphan*/  bc; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ; 
 int /*<<< orphan*/  QLCNIC_FW_LRO_MSS_CAP ; 
 int /*<<< orphan*/  QLCNIC_NIU_NON_PROMISC_MODE ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(struct qlcnic_adapter *adapter, struct net_device *netdev)
{
	int ring;

	if (adapter->is_up != QLCNIC_ADAPTER_UP_MAGIC)
		return;

	if (!FUNC12(__QLCNIC_DEV_UP, &adapter->state))
		return;

	FUNC11();
	FUNC0(netdev);
	adapter->ahw->linkup = 0;
	FUNC1(netdev);

	FUNC3(adapter);

	if (adapter->fhash.fnum)
		FUNC2(adapter);

	FUNC6(adapter, QLCNIC_NIU_NON_PROMISC_MODE);
	if (FUNC10(adapter))
		FUNC9(&adapter->ahw->sriov->bc);

	FUNC5(adapter);

	FUNC4(adapter);
	adapter->flags &= ~QLCNIC_FW_LRO_MSS_CAP;

	FUNC8(adapter);

	for (ring = 0; ring < adapter->drv_tx_rings; ring++)
		FUNC7(adapter, &adapter->tx_ring[ring]);
}
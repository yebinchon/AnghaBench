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
struct qlcnic_adapter {TYPE_2__* ahw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int num_msix; TYPE_1__* intr_tbl; } ;
struct TYPE_3__ {int id; scalar_t__ src; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,struct net_device*) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 

__attribute__((used)) static void FUNC6(struct qlcnic_adapter *adapter)
{
	int i;
	struct net_device *netdev = adapter->netdev;

	FUNC0(netdev);
	FUNC1(adapter);

	/* Disable mailbox interrupt */
	FUNC2(adapter);
	FUNC3(adapter, netdev);
	for (i = 0; i < adapter->ahw->num_msix; i++) {
		adapter->ahw->intr_tbl[i].id = i;
		adapter->ahw->intr_tbl[i].enabled = 0;
		adapter->ahw->intr_tbl[i].src = 0;
	}

	if (FUNC4(adapter))
		FUNC5(adapter);
}
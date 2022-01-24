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
struct qlcnic_esw_func_cfg {int /*<<< orphan*/  offload_flags; } ;
struct qlcnic_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  offload_flags; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_APP_CHANGED_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 

void FUNC2(struct qlcnic_adapter *adapter,
				struct qlcnic_esw_func_cfg *esw_cfg)
{
	struct net_device *netdev = adapter->netdev;

	if (FUNC1(adapter))
		return;

	adapter->offload_flags = esw_cfg->offload_flags;
	adapter->flags |= QLCNIC_APP_CHANGED_FLAGS;
	FUNC0(netdev);
	adapter->flags &= ~QLCNIC_APP_CHANGED_FLAGS;
}
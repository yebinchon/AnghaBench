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
struct qlcnic_adapter {TYPE_1__* ahw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int linkup; scalar_t__ lb_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 

void FUNC4(struct qlcnic_adapter *adapter, int linkup)
{
	struct net_device *netdev = adapter->netdev;

	if (adapter->ahw->linkup && !linkup) {
		FUNC0(netdev, "NIC Link is down\n");
		adapter->ahw->linkup = 0;
		FUNC1(netdev);
	} else if (!adapter->ahw->linkup && linkup) {
		adapter->ahw->linkup = 1;

		/* Do not advertise Link up to the stack if device
		 * is in loopback mode
		 */
		if (FUNC3(adapter) && adapter->ahw->lb_mode) {
			FUNC0(netdev, "NIC Link is up for loopback test\n");
			return;
		}

		FUNC0(netdev, "NIC Link is up\n");
		FUNC2(netdev);
	}
}
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
struct qlcnic_adapter {int /*<<< orphan*/  state; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __QLCNIC_FW_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct net_device *netdev)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);

	if (!FUNC4(__QLCNIC_FW_ATTACHED, &adapter->state))
		return;

	if (FUNC2(adapter))
		FUNC3(netdev);
	else
		FUNC0(netdev, 0);
}
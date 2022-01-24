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
struct et131x_adapter {int flags; } ;

/* Variables and functions */
 int FMP_ADAPTER_INTERRUPT_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*) ; 
 struct et131x_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct et131x_adapter *adapter = FUNC3(netdev);

	FUNC1(adapter);
	FUNC2(adapter);

	if (adapter->flags & FMP_ADAPTER_INTERRUPT_IN_USE)
		FUNC0(adapter);

	FUNC4(netdev);
}
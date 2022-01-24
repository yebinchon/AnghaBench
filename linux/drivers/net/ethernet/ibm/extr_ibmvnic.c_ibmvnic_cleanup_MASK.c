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
struct ibmvnic_adapter {int /*<<< orphan*/  resetting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvnic_adapter*) ; 
 struct ibmvnic_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *netdev)
{
	struct ibmvnic_adapter *adapter = FUNC4(netdev);

	/* ensure that transmissions are stopped if called by do_reset */
	if (FUNC7(0, &adapter->resetting))
		FUNC5(netdev);
	else
		FUNC6(netdev);

	FUNC3(adapter);
	FUNC2(adapter);

	FUNC0(adapter);
	FUNC1(adapter);
}
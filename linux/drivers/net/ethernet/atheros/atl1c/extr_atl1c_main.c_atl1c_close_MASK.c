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
struct atl1c_adapter {int /*<<< orphan*/  common_task; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __AT_DOWN ; 
 int /*<<< orphan*/  __AT_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct atl1c_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	struct atl1c_adapter *adapter = FUNC4(netdev);

	FUNC0(FUNC6(__AT_RESETTING, &adapter->flags));
	FUNC5(__AT_DOWN, &adapter->flags);
	FUNC3(&adapter->common_task);
	FUNC1(adapter);
	FUNC2(adapter);
	return 0;
}
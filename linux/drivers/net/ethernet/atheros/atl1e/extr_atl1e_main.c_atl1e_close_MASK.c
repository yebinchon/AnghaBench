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
struct atl1e_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __AT_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1e_adapter*) ; 
 struct atl1e_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev)
{
	struct atl1e_adapter *adapter = FUNC4(netdev);

	FUNC0(FUNC5(__AT_RESETTING, &adapter->flags));
	FUNC1(adapter);
	FUNC2(adapter);
	FUNC3(adapter);

	return 0;
}
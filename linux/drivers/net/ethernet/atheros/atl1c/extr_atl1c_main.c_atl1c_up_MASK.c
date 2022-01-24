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
struct atl1c_adapter {int /*<<< orphan*/  napi; int /*<<< orphan*/  flags; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __AT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_adapter*) ; 
 int FUNC2 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1c_adapter*) ; 
 int FUNC4 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct atl1c_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err;

	FUNC7(netdev);

	err = FUNC2(adapter);
	if (FUNC9(err))
		goto err_up;

	err = FUNC4(adapter);
	if (FUNC9(err))
		goto err_up;

	FUNC0(adapter);
	FUNC5(__AT_DOWN, &adapter->flags);
	FUNC6(&adapter->napi);
	FUNC3(adapter);
	FUNC8(netdev);
	return err;

err_up:
	FUNC1(adapter);
	return err;
}
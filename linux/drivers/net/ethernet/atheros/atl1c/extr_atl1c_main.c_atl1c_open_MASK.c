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
struct atl1c_adapter {int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  __AT_TESTING ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct atl1c_adapter*) ; 
 int FUNC4 (struct atl1c_adapter*) ; 
 struct atl1c_adapter* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct atl1c_adapter *adapter = FUNC5(netdev);
	int err;

	/* disallow open during test */
	if (FUNC6(__AT_TESTING, &adapter->flags))
		return -EBUSY;

	/* allocate rx/tx dma buffer & descriptors */
	err = FUNC3(adapter);
	if (FUNC7(err))
		return err;

	err = FUNC4(adapter);
	if (FUNC7(err))
		goto err_up;

	return 0;

err_up:
	FUNC0(adapter);
	FUNC1(adapter);
	FUNC2(&adapter->hw);
	return err;
}
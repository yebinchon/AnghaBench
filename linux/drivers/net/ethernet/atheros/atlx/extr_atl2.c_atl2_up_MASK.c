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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct atl2_adapter {int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; struct net_device* netdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int EIO ; 
 int MASTER_CTRL_MANUAL_INT ; 
 int /*<<< orphan*/  REG_MASTER_CTRL ; 
 int /*<<< orphan*/  __ATL2_DOWN ; 
 scalar_t__ FUNC2 (struct atl2_adapter*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct atl2_adapter*) ; 

__attribute__((used)) static int FUNC9(struct atl2_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err = 0;
	u32 val;

	/* hardware has been reset, we need to reload some things */

	err = FUNC3(&adapter->hw);
	if (err) {
		err = -EIO;
		return err;
	}

	FUNC6(netdev);
	FUNC8(adapter);

	FUNC5(adapter);

	if (FUNC2(adapter)) {
		err = -EIO;
		goto err_up;
	}

	FUNC7(__ATL2_DOWN, &adapter->flags);

	val = FUNC0(&adapter->hw, REG_MASTER_CTRL);
	FUNC1(&adapter->hw, REG_MASTER_CTRL, val |
		MASTER_CTRL_MANUAL_INT);

	FUNC4(adapter);

err_up:
	return err;
}
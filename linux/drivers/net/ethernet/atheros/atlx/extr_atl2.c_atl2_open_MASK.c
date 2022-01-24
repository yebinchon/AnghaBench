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
struct atl2_adapter {int /*<<< orphan*/  hw; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int EIO ; 
 int HZ ; 
 int MASTER_CTRL_MANUAL_INT ; 
 int /*<<< orphan*/  REG_MASTER_CTRL ; 
 int /*<<< orphan*/  __ATL2_DOWN ; 
 int /*<<< orphan*/  __ATL2_TESTING ; 
 scalar_t__ FUNC2 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl2_adapter*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct atl2_adapter*) ; 
 int FUNC6 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct atl2_adapter*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct atl2_adapter* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct net_device *netdev)
{
	struct atl2_adapter *adapter = FUNC14(netdev);
	int err;
	u32 val;

	/* disallow open during test */
	if (FUNC16(__ATL2_TESTING, &adapter->flags))
		return -EBUSY;

	/* allocate transmit descriptors */
	err = FUNC10(adapter);
	if (err)
		return err;

	err = FUNC4(&adapter->hw);
	if (err) {
		err = -EIO;
		goto err_init_hw;
	}

	/* hardware has been reset, we need to reload some things */
	FUNC9(netdev);
	FUNC12(adapter);

	FUNC8(adapter);

	if (FUNC2(adapter)) {
		err = -EIO;
		goto err_config;
	}

	err = FUNC6(adapter);
	if (err)
		goto err_req_irq;

	FUNC11(__ATL2_DOWN, &adapter->flags);

	FUNC13(&adapter->watchdog_timer, FUNC15(jiffies + 4*HZ));

	val = FUNC0(&adapter->hw, REG_MASTER_CTRL);
	FUNC1(&adapter->hw, REG_MASTER_CTRL,
		val | MASTER_CTRL_MANUAL_INT);

	FUNC5(adapter);

	return 0;

err_init_hw:
err_req_irq:
err_config:
	FUNC3(adapter);
	FUNC7(&adapter->hw);

	return err;
}
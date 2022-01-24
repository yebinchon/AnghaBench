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
struct atl1e_adapter {int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  __AT_TESTING ; 
 int /*<<< orphan*/  FUNC0 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1e_adapter*) ; 
 int FUNC3 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct atl1e_adapter*) ; 
 int FUNC6 (struct atl1e_adapter*) ; 
 struct atl1e_adapter* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev)
{
	struct atl1e_adapter *adapter = FUNC7(netdev);
	int err;

	/* disallow open during test */
	if (FUNC8(__AT_TESTING, &adapter->flags))
		return -EBUSY;

	/* allocate rx/tx dma buffer & descriptors */
	FUNC2(adapter);
	err = FUNC5(adapter);
	if (FUNC9(err))
		return err;

	err = FUNC3(adapter);
	if (FUNC9(err))
		goto err_req_irq;

	err = FUNC6(adapter);
	if (FUNC9(err))
		goto err_up;

	return 0;

err_up:
	FUNC0(adapter);
err_req_irq:
	FUNC1(adapter);
	FUNC4(&adapter->hw);

	return err;
}
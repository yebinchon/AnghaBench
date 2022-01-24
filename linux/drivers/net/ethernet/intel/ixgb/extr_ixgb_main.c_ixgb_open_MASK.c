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
struct ixgb_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_adapter*) ; 
 int FUNC3 (struct ixgb_adapter*) ; 
 int FUNC4 (struct ixgb_adapter*) ; 
 int FUNC5 (struct ixgb_adapter*) ; 
 struct ixgb_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int
FUNC9(struct net_device *netdev)
{
	struct ixgb_adapter *adapter = FUNC6(netdev);
	int err;

	/* allocate transmit descriptors */
	err = FUNC4(adapter);
	if (err)
		goto err_setup_tx;

	FUNC7(netdev);

	/* allocate receive descriptors */

	err = FUNC3(adapter);
	if (err)
		goto err_setup_rx;

	err = FUNC5(adapter);
	if (err)
		goto err_up;

	FUNC8(netdev);

	return 0;

err_up:
	FUNC0(adapter);
err_setup_rx:
	FUNC1(adapter);
err_setup_tx:
	FUNC2(adapter);

	return err;
}
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
struct vmxnet3_adapter {int /*<<< orphan*/  state; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_STATE_BIT_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 struct vmxnet3_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmxnet3_adapter*) ; 
 int FUNC11 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC13(struct net_device *netdev, int new_mtu)
{
	struct vmxnet3_adapter *adapter = FUNC2(netdev);
	int err = 0;

	netdev->mtu = new_mtu;

	/*
	 * Reset_work may be in the middle of resetting the device, wait for its
	 * completion.
	 */
	while (FUNC4(VMXNET3_STATE_BIT_RESETTING, &adapter->state))
		FUNC5(1000, 2000);

	if (FUNC3(netdev)) {
		FUNC9(adapter);
		FUNC10(adapter);

		/* we need to re-create the rx queue based on the new mtu */
		FUNC12(adapter);
		FUNC7(adapter);
		err = FUNC11(adapter);
		if (err) {
			FUNC1(netdev,
				   "failed to re-create rx queues, "
				   " error %d. Closing it.\n", err);
			goto out;
		}

		err = FUNC6(adapter);
		if (err) {
			FUNC1(netdev,
				   "failed to re-activate, error %d. "
				   "Closing it\n", err);
			goto out;
		}
	}

out:
	FUNC0(VMXNET3_STATE_BIT_RESETTING, &adapter->state);
	if (err)
		FUNC8(adapter);

	return err;
}
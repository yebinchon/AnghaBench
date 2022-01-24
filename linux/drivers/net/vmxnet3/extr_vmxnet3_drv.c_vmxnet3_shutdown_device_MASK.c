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
struct vmxnet3_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  cmd_lock; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_CMD_QUIESCE_DEV ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int /*<<< orphan*/  VMXNET3_STATE_BIT_QUIESCED ; 
 int /*<<< orphan*/  VMXNET3_STATE_BIT_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vmxnet3_adapter* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vmxnet3_adapter*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC3(pdev);
	struct vmxnet3_adapter *adapter = FUNC2(netdev);
	unsigned long flags;

	/* Reset_work may be in the middle of resetting the device, wait for its
	 * completion.
	 */
	while (FUNC6(VMXNET3_STATE_BIT_RESETTING, &adapter->state))
		FUNC7(1000, 2000);

	if (FUNC6(VMXNET3_STATE_BIT_QUIESCED,
			     &adapter->state)) {
		FUNC1(VMXNET3_STATE_BIT_RESETTING, &adapter->state);
		return;
	}
	FUNC4(&adapter->cmd_lock, flags);
	FUNC0(adapter, VMXNET3_REG_CMD,
			       VMXNET3_CMD_QUIESCE_DEV);
	FUNC5(&adapter->cmd_lock, flags);
	FUNC8(adapter);

	FUNC1(VMXNET3_STATE_BIT_RESETTING, &adapter->state);
}
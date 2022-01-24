#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__ mac; } ;
struct iavf_adapter {int flags; scalar_t__ state; int /*<<< orphan*/  crit_section; int /*<<< orphan*/  mac_vlan_list_lock; TYPE_3__ hw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int IAVF_FLAG_PF_COMMS_FAILED ; 
 scalar_t__ __IAVF_DOWN ; 
 int /*<<< orphan*/  __IAVF_IN_CRITICAL_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct iavf_adapter*,int) ; 
 int FUNC9 (struct iavf_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct iavf_adapter*) ; 
 int FUNC11 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct iavf_adapter*) ; 
 struct iavf_adapter* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 

__attribute__((used)) static int FUNC18(struct net_device *netdev)
{
	struct iavf_adapter *adapter = FUNC13(netdev);
	int err;

	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) {
		FUNC1(&adapter->pdev->dev, "Unable to open device due to PF driver failure.\n");
		return -EIO;
	}

	while (FUNC16(__IAVF_IN_CRITICAL_TASK,
				&adapter->crit_section))
		FUNC17(500, 1000);

	if (adapter->state != __IAVF_DOWN) {
		err = -EBUSY;
		goto err_unlock;
	}

	/* allocate transmit descriptors */
	err = FUNC11(adapter);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC10(adapter);
	if (err)
		goto err_setup_rx;

	/* clear any pending interrupts, may auto mask */
	err = FUNC9(adapter, netdev->name);
	if (err)
		goto err_req_irq;

	FUNC14(&adapter->mac_vlan_list_lock);

	FUNC2(adapter, adapter->hw.mac.addr);

	FUNC15(&adapter->mac_vlan_list_lock);

	FUNC3(adapter);

	FUNC12(adapter);

	FUNC8(adapter, true);

	FUNC0(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);

	return 0;

err_req_irq:
	FUNC4(adapter);
	FUNC7(adapter);
err_setup_rx:
	FUNC5(adapter);
err_setup_tx:
	FUNC6(adapter);
err_unlock:
	FUNC0(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);

	return err;
}
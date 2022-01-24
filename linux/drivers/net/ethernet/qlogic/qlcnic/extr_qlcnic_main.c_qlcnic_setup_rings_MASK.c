#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct qlcnic_adapter {scalar_t__ drv_tss_rings; scalar_t__ drv_rss_rings; scalar_t__ drv_tx_rings; scalar_t__ drv_sds_rings; int /*<<< orphan*/  state; TYPE_1__* pdev; int /*<<< orphan*/  msix_entries; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NETDEV_UP ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct net_device*) ; 
 int FUNC1 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct qlcnic_adapter*,int) ; 
 int FUNC14 (struct qlcnic_adapter*) ; 
 int FUNC15 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct qlcnic_adapter*,scalar_t__,scalar_t__) ; 
 int FUNC19 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC20 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC22(struct qlcnic_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	u8 tx_rings, rx_rings;
	int err;

	if (FUNC21(__QLCNIC_RESETTING, &adapter->state))
		return -EBUSY;

	tx_rings = adapter->drv_tss_rings;
	rx_rings = adapter->drv_rss_rings;

	FUNC7(netdev);

	err = FUNC18(adapter, tx_rings, rx_rings);
	if (err)
		goto done;

	if (FUNC8(netdev))
		FUNC0(adapter, netdev);

	FUNC16(adapter);

	if (FUNC9(adapter)) {
		FUNC12(adapter);
		FUNC11(adapter);
	}

	FUNC20(adapter);

	err = FUNC19(adapter);
	if (err) {
		FUNC4(adapter->msix_entries);
		FUNC5(netdev, "failed to setup interrupt\n");
		return err;
	}

	/* Check if we need to update real_num_{tx|rx}_queues because
	 * qlcnic_setup_intr() may change Tx/Rx rings size
	 */
	if ((tx_rings != adapter->drv_tx_rings) ||
	    (rx_rings != adapter->drv_sds_rings)) {
		err = FUNC18(adapter,
						 adapter->drv_tx_rings,
						 adapter->drv_sds_rings);
		if (err)
			goto done;
	}

	if (FUNC9(adapter)) {
		FUNC13(adapter, 1);
		err = FUNC14(adapter);
		FUNC10(adapter);
		if (err) {
			FUNC3(&adapter->pdev->dev,
				"failed to setup mbx interrupt\n");
			goto done;
		}
	}

	if (FUNC8(netdev)) {
		err = FUNC15(adapter);
		if (err)
			goto done;
		err = FUNC1(adapter, netdev);
		if (err)
			goto done;
		FUNC17(netdev, NETDEV_UP);
	}
done:
	FUNC6(netdev);
	FUNC2(__QLCNIC_RESETTING, &adapter->state);
	return err;
}
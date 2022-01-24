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
typedef  void* u8 ;
struct qlcnic_hardware_context {scalar_t__ op_mode; scalar_t__ has_link_events; scalar_t__ linkup; } ;
struct qlcnic_adapter {void* drv_tx_rings; void* drv_sds_rings; int /*<<< orphan*/  state; struct qlcnic_hardware_context* ahw; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOTSUPP ; 
 int ETIMEDOUT ; 
 void* QLCNIC_ILB_MODE ; 
 int /*<<< orphan*/  QLCNIC_LOOPBACK_TEST ; 
 scalar_t__ QLCNIC_NON_PRIV_FUNC ; 
 int /*<<< orphan*/  QLC_83XX_LB_MSLEEP_COUNT ; 
 int /*<<< orphan*/  QLC_83XX_LB_WAIT_COUNT ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,void*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,void*) ; 
 int FUNC7 (struct qlcnic_adapter*,void*) ; 
 int FUNC8 (struct qlcnic_adapter*,void*) ; 
 scalar_t__ FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct net_device *netdev, u8 mode)
{
	struct qlcnic_adapter *adapter = FUNC2(netdev);
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	u8 drv_sds_rings = adapter->drv_sds_rings;
	u8 drv_tx_rings = adapter->drv_tx_rings;
	int ret = 0, loop = 0;

	if (ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
		FUNC3(netdev,
			    "Loopback test not supported in non privileged mode\n");
		return -ENOTSUPP;
	}

	if (FUNC11(__QLCNIC_RESETTING, &adapter->state)) {
		FUNC1(netdev, "Device is resetting\n");
		return -EBUSY;
	}

	if (FUNC9(adapter)) {
		FUNC1(netdev, "Device is in diagnostics mode\n");
		return -EBUSY;
	}

	FUNC1(netdev, "%s loopback test in progress\n",
		    mode == QLCNIC_ILB_MODE ? "internal" : "external");

	ret = FUNC5(netdev, QLCNIC_LOOPBACK_TEST,
					 drv_sds_rings);
	if (ret)
		goto fail_diag_alloc;

	ret = FUNC7(adapter, mode);
	if (ret)
		goto free_diag_res;

	/* Poll for link up event before running traffic */
	do {
		FUNC0(QLC_83XX_LB_MSLEEP_COUNT);

		if (FUNC11(__QLCNIC_RESETTING, &adapter->state)) {
			FUNC1(netdev,
				    "Device is resetting, free LB test resources\n");
			ret = -EBUSY;
			goto free_diag_res;
		}
		if (loop++ > QLC_83XX_LB_WAIT_COUNT) {
			FUNC1(netdev,
				    "Firmware didn't sent link up event to loopback request\n");
			ret = -ETIMEDOUT;
			FUNC4(adapter, mode);
			goto free_diag_res;
		}
	} while ((adapter->ahw->linkup && ahw->has_link_events) != 1);

	ret = FUNC8(adapter, mode);

	FUNC4(adapter, mode);

free_diag_res:
	FUNC6(netdev, drv_sds_rings);

fail_diag_alloc:
	adapter->drv_sds_rings = drv_sds_rings;
	adapter->drv_tx_rings = drv_tx_rings;
	FUNC10(adapter);
	return ret;
}
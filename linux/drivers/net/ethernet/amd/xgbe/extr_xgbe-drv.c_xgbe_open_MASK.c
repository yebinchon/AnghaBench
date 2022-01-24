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
struct xgbe_prv_data {char* an_name; char* ecc_name; char* i2c_name; void* dev_workqueue; void* an_workqueue; int /*<<< orphan*/  sysclk; int /*<<< orphan*/  ptpclk; int /*<<< orphan*/  dev_state; int /*<<< orphan*/  tx_tstamp_work; int /*<<< orphan*/  stopdev_work; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  service_work; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XGBE_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 char* FUNC8 (struct net_device*) ; 
 struct xgbe_prv_data* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int FUNC11 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct xgbe_prv_data*) ; 
 int FUNC13 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  xgbe_restart ; 
 int /*<<< orphan*/  xgbe_service ; 
 int FUNC14 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  xgbe_stopdev ; 
 int /*<<< orphan*/  xgbe_tx_tstamp ; 

__attribute__((used)) static int FUNC15(struct net_device *netdev)
{
	struct xgbe_prv_data *pdata = FUNC9(netdev);
	int ret;

	/* Create the various names based on netdev name */
	FUNC10(pdata->an_name, sizeof(pdata->an_name) - 1, "%s-pcs",
		 FUNC8(netdev));

	FUNC10(pdata->ecc_name, sizeof(pdata->ecc_name) - 1, "%s-ecc",
		 FUNC8(netdev));

	FUNC10(pdata->i2c_name, sizeof(pdata->i2c_name) - 1, "%s-i2c",
		 FUNC8(netdev));

	/* Create workqueues */
	pdata->dev_workqueue =
		FUNC4(FUNC8(netdev));
	if (!pdata->dev_workqueue) {
		FUNC7(netdev, "device workqueue creation failed\n");
		return -ENOMEM;
	}

	pdata->an_workqueue =
		FUNC4(pdata->an_name);
	if (!pdata->an_workqueue) {
		FUNC7(netdev, "phy workqueue creation failed\n");
		ret = -ENOMEM;
		goto err_dev_wq;
	}

	/* Reset the phy settings */
	ret = FUNC13(pdata);
	if (ret)
		goto err_an_wq;

	/* Enable the clocks */
	ret = FUNC3(pdata->sysclk);
	if (ret) {
		FUNC6(netdev, "dma clk_prepare_enable failed\n");
		goto err_an_wq;
	}

	ret = FUNC3(pdata->ptpclk);
	if (ret) {
		FUNC6(netdev, "ptp clk_prepare_enable failed\n");
		goto err_sysclk;
	}

	FUNC0(&pdata->service_work, xgbe_service);
	FUNC0(&pdata->restart_work, xgbe_restart);
	FUNC0(&pdata->stopdev_work, xgbe_stopdev);
	FUNC0(&pdata->tx_tstamp_work, xgbe_tx_tstamp);

	ret = FUNC11(pdata);
	if (ret)
		goto err_ptpclk;

	ret = FUNC14(pdata);
	if (ret)
		goto err_mem;

	FUNC1(XGBE_DOWN, &pdata->dev_state);

	return 0;

err_mem:
	FUNC12(pdata);

err_ptpclk:
	FUNC2(pdata->ptpclk);

err_sysclk:
	FUNC2(pdata->sysclk);

err_an_wq:
	FUNC5(pdata->an_workqueue);

err_dev_wq:
	FUNC5(pdata->dev_workqueue);

	return ret;
}
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
struct xgbe_phy_if {int (* phy_start ) (struct xgbe_prv_data*) ;} ;
struct xgbe_hw_if {int (* init ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* exit ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* enable_rx ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* enable_tx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {unsigned int rx_ring_count; int /*<<< orphan*/  dev_state; int /*<<< orphan*/  service_work; int /*<<< orphan*/  dev_workqueue; int /*<<< orphan*/ * rss_table; int /*<<< orphan*/  tx_ring_count; struct net_device* netdev; struct xgbe_phy_if phy_if; struct xgbe_hw_if hw_if; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMCH ; 
 int /*<<< orphan*/  MAC_RSSDR ; 
 unsigned int XGBE_RSS_MAX_TABLE_SIZE ; 
 int /*<<< orphan*/  XGBE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int FUNC3 (struct net_device*,unsigned int) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct xgbe_prv_data*) ; 
 int FUNC8 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct xgbe_prv_data*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct xgbe_prv_data*,int) ; 
 int FUNC16 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC18(struct xgbe_prv_data *pdata)
{
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_phy_if *phy_if = &pdata->phy_if;
	struct net_device *netdev = pdata->netdev;
	unsigned int i;
	int ret;

	/* Set the number of queues */
	ret = FUNC4(netdev, pdata->tx_ring_count);
	if (ret) {
		FUNC2(netdev, "error setting real tx queue count\n");
		return ret;
	}

	ret = FUNC3(netdev, pdata->rx_ring_count);
	if (ret) {
		FUNC2(netdev, "error setting real rx queue count\n");
		return ret;
	}

	/* Set RSS lookup table data for programming */
	for (i = 0; i < XGBE_RSS_MAX_TABLE_SIZE; i++)
		FUNC0(pdata->rss_table[i], MAC_RSSDR, DMCH,
			       i % pdata->rx_ring_count);

	ret = hw_if->init(pdata);
	if (ret)
		return ret;

	FUNC15(pdata, 1);

	ret = FUNC16(pdata);
	if (ret)
		goto err_napi;

	ret = phy_if->phy_start(pdata);
	if (ret)
		goto err_irqs;

	hw_if->enable_tx(pdata);
	hw_if->enable_rx(pdata);

	FUNC12(netdev);

	FUNC5(netdev);

	FUNC17(pdata);
	FUNC6(pdata->dev_workqueue, &pdata->service_work);

	FUNC1(XGBE_STOPPED, &pdata->dev_state);

	return 0;

err_irqs:
	FUNC13(pdata);

err_napi:
	FUNC14(pdata, 1);

	hw_if->exit(pdata);

	return ret;
}
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
struct xgbe_phy_if {int /*<<< orphan*/  (* phy_stop ) (struct xgbe_prv_data*) ;} ;
struct xgbe_hw_if {int /*<<< orphan*/  (* exit ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* disable_rx ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* disable_tx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {unsigned int channel_count; int /*<<< orphan*/  dev_state; struct xgbe_channel** channel; int /*<<< orphan*/  dev_workqueue; struct net_device* netdev; struct xgbe_phy_if phy_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {int /*<<< orphan*/  queue_index; int /*<<< orphan*/  tx_ring; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XGBE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct xgbe_prv_data*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC15(struct xgbe_prv_data *pdata)
{
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_phy_if *phy_if = &pdata->phy_if;
	struct xgbe_channel *channel;
	struct net_device *netdev = pdata->netdev;
	struct netdev_queue *txq;
	unsigned int i;

	FUNC0("-->xgbe_stop\n");

	if (FUNC10(XGBE_STOPPED, &pdata->dev_state))
		return;

	FUNC4(netdev);

	FUNC14(pdata);
	FUNC1(pdata->dev_workqueue);

	FUNC13(pdata);

	hw_if->disable_tx(pdata);
	hw_if->disable_rx(pdata);

	phy_if->phy_stop(pdata);

	FUNC11(pdata);

	FUNC12(pdata, 1);

	hw_if->exit(pdata);

	for (i = 0; i < pdata->channel_count; i++) {
		channel = pdata->channel[i];
		if (!channel->tx_ring)
			continue;

		txq = FUNC2(netdev, channel->queue_index);
		FUNC3(txq);
	}

	FUNC5(XGBE_STOPPED, &pdata->dev_state);

	FUNC0("<--xgbe_stop\n");
}
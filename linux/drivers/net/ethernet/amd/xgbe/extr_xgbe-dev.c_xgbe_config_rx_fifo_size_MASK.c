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
struct xgbe_prv_data {unsigned int rx_q_count; int /*<<< orphan*/  netdev; TYPE_1__* pfc; scalar_t__ ets; scalar_t__ pfc_rfa; int /*<<< orphan*/  pfcq; } ;
struct TYPE_2__ {scalar_t__ pfc_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTL_Q_RQOMR ; 
 int /*<<< orphan*/  RQS ; 
 int XGBE_MAX_QUEUES ; 
 unsigned int XGMAC_FIFO_UNIT ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*) ; 
 unsigned int FUNC8 (struct xgbe_prv_data*) ; 
 unsigned int FUNC9 (unsigned int,unsigned int,unsigned int*) ; 

__attribute__((used)) static void FUNC10(struct xgbe_prv_data *pdata)
{
	unsigned int fifo_size;
	unsigned int fifo[XGBE_MAX_QUEUES];
	unsigned int prio_queues;
	unsigned int i;

	/* Clear any DCB related fifo/queue information */
	FUNC2(pdata->pfcq, 0, sizeof(pdata->pfcq));
	pdata->pfc_rfa = 0;

	fifo_size = FUNC8(pdata);
	prio_queues = FUNC1(pdata->rx_q_count);

	/* Assign a minimum fifo to the non-VLAN priority queues */
	fifo_size = FUNC9(fifo_size, pdata->rx_q_count, fifo);

	if (pdata->pfc && pdata->ets)
		FUNC4(pdata, fifo_size, fifo);
	else
		FUNC5(fifo_size, prio_queues, fifo);

	for (i = 0; i < pdata->rx_q_count; i++)
		FUNC0(pdata, i, MTL_Q_RQOMR, RQS, fifo[i]);

	FUNC6(pdata, fifo);
	FUNC7(pdata);

	if (pdata->pfc && pdata->ets && pdata->pfc->pfc_en) {
		FUNC3(pdata, drv, pdata->netdev,
			   "%u Rx hardware queues\n", pdata->rx_q_count);
		for (i = 0; i < pdata->rx_q_count; i++)
			FUNC3(pdata, drv, pdata->netdev,
				   "RxQ%u, %u byte fifo queue\n", i,
				   ((fifo[i] + 1) * XGMAC_FIFO_UNIT));
	} else {
		FUNC3(pdata, drv, pdata->netdev,
			   "%u Rx hardware queues, %u byte fifo per queue\n",
			   pdata->rx_q_count,
			   ((fifo[0] + 1) * XGMAC_FIFO_UNIT));
	}
}
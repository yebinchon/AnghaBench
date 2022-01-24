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
struct TYPE_2__ {int /*<<< orphan*/  (* enable_rx ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* disable_rx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int /*<<< orphan*/  netdev; TYPE_1__ hw_if; int /*<<< orphan*/  dev_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  XGBE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC7(struct xgbe_prv_data *pdata)
{
	if (!FUNC4(XGBE_DOWN, &pdata->dev_state)) {
		/* Just stop the Tx queues while Rx fifo is changed */
		FUNC1(pdata->netdev);

		/* Suspend Rx so that fifo's can be adjusted */
		pdata->hw_if.disable_rx(pdata);
	}

	FUNC6(pdata);
	FUNC5(pdata);

	if (!FUNC4(XGBE_DOWN, &pdata->dev_state)) {
		/* Resume Rx */
		pdata->hw_if.enable_rx(pdata);

		/* Resume Tx queues */
		FUNC0(pdata->netdev);
	}
}
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
struct xgbe_i2c_op_state {int ret; int tx_abort_source; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  rx_len; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  tx_len; struct xgbe_i2c_op* op; } ;
struct TYPE_2__ {struct xgbe_i2c_op_state op_state; } ;
struct xgbe_prv_data {int /*<<< orphan*/  i2c_mutex; int /*<<< orphan*/  netdev; int /*<<< orphan*/  i2c_complete; TYPE_1__ i2c; } ;
struct xgbe_i2c_op {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; int /*<<< orphan*/  target; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOTCONN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int IC_TX_ABRT_7B_ADDR_NOACK ; 
 int IC_TX_ABRT_ARB_LOST ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_i2c_op_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 
 int FUNC7 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 
 int FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct xgbe_prv_data *pdata, struct xgbe_i2c_op *op)
{
	struct xgbe_i2c_op_state *state = &pdata->i2c.op_state;
	int ret;

	FUNC1(&pdata->i2c_mutex);

	FUNC4(&pdata->i2c_complete);

	ret = FUNC7(pdata);
	if (ret) {
		FUNC3(pdata->netdev, "failed to disable i2c master\n");
		goto unlock;
	}

	FUNC11(pdata, op->target);

	FUNC0(state, 0, sizeof(*state));
	state->op = op;
	state->tx_len = op->len;
	state->tx_buf = op->buf;
	state->rx_len = op->len;
	state->rx_buf = op->buf;

	FUNC6(pdata);
	ret = FUNC9(pdata);
	if (ret) {
		FUNC3(pdata->netdev, "failed to enable i2c master\n");
		goto unlock;
	}

	/* Enabling the interrupts will cause the TX FIFO empty interrupt to
	 * fire and begin to process the command via the ISR.
	 */
	FUNC10(pdata);

	if (!FUNC5(&pdata->i2c_complete, HZ)) {
		FUNC3(pdata->netdev, "i2c operation timed out\n");
		ret = -ETIMEDOUT;
		goto disable;
	}

	ret = state->ret;
	if (ret) {
		if (state->tx_abort_source & IC_TX_ABRT_7B_ADDR_NOACK)
			ret = -ENOTCONN;
		else if (state->tx_abort_source & IC_TX_ABRT_ARB_LOST)
			ret = -EAGAIN;
	}

disable:
	FUNC8(pdata);
	FUNC7(pdata);

unlock:
	FUNC2(&pdata->i2c_mutex);

	return ret;
}
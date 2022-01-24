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
struct xgbe_i2c_op_state {int /*<<< orphan*/  tx_abort_source; } ;
struct TYPE_2__ {struct xgbe_i2c_op_state op_state; } ;
struct xgbe_prv_data {TYPE_1__ i2c; } ;

/* Variables and functions */
 int /*<<< orphan*/  IC_CLR_STOP_DET ; 
 int /*<<< orphan*/  IC_CLR_TX_ABRT ; 
 int /*<<< orphan*/  IC_TX_ABRT_SOURCE ; 
 unsigned int XGBE_INTR_STOP_DET ; 
 unsigned int XGBE_INTR_TX_ABRT ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct xgbe_prv_data *pdata,
					  unsigned int isr)
{
	struct xgbe_i2c_op_state *state = &pdata->i2c.op_state;

	if (isr & XGBE_INTR_TX_ABRT) {
		state->tx_abort_source = FUNC0(pdata, IC_TX_ABRT_SOURCE);
		FUNC0(pdata, IC_CLR_TX_ABRT);
	}

	if (isr & XGBE_INTR_STOP_DET)
		FUNC0(pdata, IC_CLR_STOP_DET);
}
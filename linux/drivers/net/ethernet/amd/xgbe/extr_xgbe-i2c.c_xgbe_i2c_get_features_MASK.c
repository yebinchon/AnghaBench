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
struct xgbe_i2c {void* tx_fifo_size; void* rx_fifo_size; void* max_speed_mode; } ;
struct xgbe_prv_data {int /*<<< orphan*/  dev; struct xgbe_i2c i2c; } ;

/* Variables and functions */
 int /*<<< orphan*/  IC_COMP_PARAM_1 ; 
 int /*<<< orphan*/  MAX_SPEED_MODE ; 
 int /*<<< orphan*/  RX_BUFFER_DEPTH ; 
 int /*<<< orphan*/  TX_BUFFER_DEPTH ; 
 void* FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,void*,char*,void*,char*,void*) ; 
 scalar_t__ FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC4(struct xgbe_prv_data *pdata)
{
	struct xgbe_i2c *i2c = &pdata->i2c;
	unsigned int reg;

	reg = FUNC1(pdata, IC_COMP_PARAM_1);
	i2c->max_speed_mode = FUNC0(reg, IC_COMP_PARAM_1,
					    MAX_SPEED_MODE);
	i2c->rx_fifo_size = FUNC0(reg, IC_COMP_PARAM_1,
					  RX_BUFFER_DEPTH);
	i2c->tx_fifo_size = FUNC0(reg, IC_COMP_PARAM_1,
					  TX_BUFFER_DEPTH);

	if (FUNC3(pdata))
		FUNC2(pdata->dev, "I2C features: %s=%u, %s=%u, %s=%u\n",
			"MAX_SPEED_MODE", i2c->max_speed_mode,
			"RX_BUFFER_DEPTH", i2c->rx_fifo_size,
			"TX_BUFFER_DEPTH", i2c->tx_fifo_size);
}
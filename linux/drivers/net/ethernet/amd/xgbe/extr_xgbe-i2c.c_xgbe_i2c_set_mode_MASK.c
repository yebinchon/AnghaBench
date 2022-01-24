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
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IC_CON ; 
 int /*<<< orphan*/  MASTER_MODE ; 
 int /*<<< orphan*/  RESTART_EN ; 
 int /*<<< orphan*/  RX_FIFO_FULL_HOLD ; 
 int /*<<< orphan*/  SLAVE_DISABLE ; 
 int /*<<< orphan*/  SPEED ; 
 int XGBE_STD_SPEED ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	unsigned int reg;

	reg = FUNC0(pdata, IC_CON);
	FUNC2(reg, IC_CON, MASTER_MODE, 1);
	FUNC2(reg, IC_CON, SLAVE_DISABLE, 1);
	FUNC2(reg, IC_CON, RESTART_EN, 1);
	FUNC2(reg, IC_CON, SPEED, XGBE_STD_SPEED);
	FUNC2(reg, IC_CON, RX_FIFO_FULL_HOLD, 1);
	FUNC1(pdata, IC_CON, reg);
}
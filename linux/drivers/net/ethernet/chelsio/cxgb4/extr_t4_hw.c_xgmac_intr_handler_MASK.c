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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_PORT_INT_CAUSE_A ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int RXFIFO_PRTY_ERR_F ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int TXFIFO_PRTY_ERR_F ; 
 int /*<<< orphan*/  XGMAC_PORT_INT_CAUSE_A ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int FUNC5 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int,int) ; 

__attribute__((used)) static void FUNC7(struct adapter *adap, int port)
{
	u32 v, int_cause_reg;

	if (FUNC3(adap->params.chip))
		int_cause_reg = FUNC0(port, XGMAC_PORT_INT_CAUSE_A);
	else
		int_cause_reg = FUNC1(port, MAC_PORT_INT_CAUSE_A);

	v = FUNC5(adap, int_cause_reg);

	v &= TXFIFO_PRTY_ERR_F | RXFIFO_PRTY_ERR_F;
	if (!v)
		return;

	if (v & TXFIFO_PRTY_ERR_F)
		FUNC2(adap->pdev_dev, "XGMAC %d Tx FIFO parity error\n",
			  port);
	if (v & RXFIFO_PRTY_ERR_F)
		FUNC2(adap->pdev_dev, "XGMAC %d Rx FIFO parity error\n",
			  port);
	FUNC6(adap, FUNC0(port, XGMAC_PORT_INT_CAUSE_A), v);
	FUNC4(adap);
}
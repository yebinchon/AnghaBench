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
typedef  int u32 ;
struct sky2_hw {struct net_device** dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B3_RI_CTRL ; 
 int /*<<< orphan*/  BMU_CLR_IRQ_PAR ; 
 int /*<<< orphan*/  BMU_CLR_IRQ_TCP ; 
 int /*<<< orphan*/  GMF_CLI_TX_PE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RI_CLR_RD_PERR ; 
 int /*<<< orphan*/  RI_CLR_WR_PERR ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_GMF_CTRL_T ; 
 int Y2_IS_PAR_MAC1 ; 
 int Y2_IS_PAR_RD1 ; 
 int Y2_IS_PAR_RX1 ; 
 int Y2_IS_PAR_WR1 ; 
 int Y2_IS_TCP_TXA1 ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/ * rxqaddr ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * txqaddr ; 

__attribute__((used)) static void FUNC9(struct sky2_hw *hw, unsigned port, u32 status)
{
	struct net_device *dev = hw->dev[port];

	if (FUNC3())
		FUNC5(dev, "hw error interrupt status 0x%x\n", status);

	if (status & Y2_IS_PAR_RD1) {
		if (FUNC3())
			FUNC4(dev, "ram data read parity error\n");
		/* Clear IRQ */
		FUNC6(hw, FUNC1(port, B3_RI_CTRL), RI_CLR_RD_PERR);
	}

	if (status & Y2_IS_PAR_WR1) {
		if (FUNC3())
			FUNC4(dev, "ram data write parity error\n");

		FUNC6(hw, FUNC1(port, B3_RI_CTRL), RI_CLR_WR_PERR);
	}

	if (status & Y2_IS_PAR_MAC1) {
		if (FUNC3())
			FUNC4(dev, "MAC parity error\n");
		FUNC8(hw, FUNC2(port, TX_GMF_CTRL_T), GMF_CLI_TX_PE);
	}

	if (status & Y2_IS_PAR_RX1) {
		if (FUNC3())
			FUNC4(dev, "RX parity error\n");
		FUNC7(hw, FUNC0(rxqaddr[port], Q_CSR), BMU_CLR_IRQ_PAR);
	}

	if (status & Y2_IS_TCP_TXA1) {
		if (FUNC3())
			FUNC4(dev, "TCP segmentation error\n");
		FUNC7(hw, FUNC0(txqaddr[port], Q_CSR), BMU_CLR_IRQ_TCP);
	}
}
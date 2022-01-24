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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct skge_hw {scalar_t__ phy_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMAC_IRQ_MSK ; 
 int /*<<< orphan*/  PHY_BCOM_INT_MASK ; 
 scalar_t__ SK_PHY_BCOM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XM_GP_PORT ; 
 int XM_GP_RES_STAT ; 
 int /*<<< orphan*/  XM_HSM ; 
 int /*<<< orphan*/  XM_IMSK ; 
 int XM_IMSK_DISABLE ; 
 int XM_MD_FRF ; 
 int XM_MD_FTF ; 
 int /*<<< orphan*/  XM_MODE ; 
 int /*<<< orphan*/  XM_RX_CMD ; 
 int /*<<< orphan*/  XM_TX_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC3 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct skge_hw *hw, int port)
{
	static const u8 zero[8]  = { 0 };
	u32 reg;

	FUNC1(hw, FUNC0(port, GMAC_IRQ_MSK), 0);

	/* reset the statistics module */
	FUNC5(hw, port, XM_GP_PORT, XM_GP_RES_STAT);
	FUNC4(hw, port, XM_IMSK, XM_IMSK_DISABLE);
	FUNC5(hw, port, XM_MODE, 0);		/* clear Mode Reg */
	FUNC4(hw, port, XM_TX_CMD, 0);	/* reset TX CMD Reg */
	FUNC4(hw, port, XM_RX_CMD, 0);	/* reset RX CMD Reg */

	/* disable Broadcom PHY IRQ */
	if (hw->phy_type == SK_PHY_BCOM)
		FUNC4(hw, port, PHY_BCOM_INT_MASK, 0xffff);

	FUNC2(hw, port, XM_HSM, zero);

	/* Flush TX and RX fifo */
	reg = FUNC3(hw, port, XM_MODE);
	FUNC5(hw, port, XM_MODE, reg | XM_MD_FTF);
	FUNC5(hw, port, XM_MODE, reg | XM_MD_FRF);
}
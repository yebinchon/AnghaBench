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
struct xgene_enet_pdata {int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  mdio_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_BYPASS_ADDR ; 
 int /*<<< orphan*/  CFG_LINK_AGGR_RESUME_0_ADDR ; 
 int CFG_RSIF_FPBUFF_TIMEOUT_EN ; 
 int /*<<< orphan*/  CSR_MULTI_DPF0_ADDR ; 
 int DEF_PAUSE_OFF_THRES ; 
 int DEF_PAUSE_THRES ; 
 int DEF_QUANTA ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  MII_MGMT_CONFIG_ADDR ; 
 int RESUME_RX0 ; 
 int RESUME_TX ; 
 int /*<<< orphan*/  RSIF_CONFIG_REG_ADDR ; 
 int /*<<< orphan*/  RSIF_RAM_DBG_REG0_ADDR ; 
 int /*<<< orphan*/  RXBUF_PAUSE_OFF_THRESH ; 
 int /*<<< orphan*/  RXBUF_PAUSE_THRESH ; 
 int RX_DV_GATE_EN0 ; 
 int /*<<< orphan*/  RX_DV_GATE_REG_0_ADDR ; 
 int TX_DV_GATE_EN0 ; 
 int TX_PORT0 ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgene_enet_pdata*) ; 

__attribute__((used)) static void FUNC12(struct xgene_enet_pdata *pdata)
{
	u32 value;

	if (!pdata->mdio_driver)
		FUNC9(pdata);

	FUNC11(pdata);
	FUNC10(pdata);

	/* Adjust MDC clock frequency */
	value = FUNC2(pdata, MII_MGMT_CONFIG_ADDR);
	FUNC0(&value, 7);
	FUNC5(pdata, MII_MGMT_CONFIG_ADDR, value);

	/* Enable drop if bufpool not available */
	FUNC1(pdata, RSIF_CONFIG_REG_ADDR, &value);
	value |= CFG_RSIF_FPBUFF_TIMEOUT_EN;
	FUNC4(pdata, RSIF_CONFIG_REG_ADDR, value);

	/* Rtype should be copied from FP */
	FUNC4(pdata, RSIF_RAM_DBG_REG0_ADDR, 0);

	/* Configure HW pause frame generation */
	FUNC3(pdata, CSR_MULTI_DPF0_ADDR, &value);
	value = (DEF_QUANTA << 16) | (value & 0xFFFF);
	FUNC6(pdata, CSR_MULTI_DPF0_ADDR, value);

	FUNC4(pdata, RXBUF_PAUSE_THRESH, DEF_PAUSE_THRES);
	FUNC4(pdata, RXBUF_PAUSE_OFF_THRESH, DEF_PAUSE_OFF_THRES);

	FUNC8(pdata, pdata->tx_pause);
	FUNC7(pdata, pdata->rx_pause);

	/* Rx-Tx traffic resume */
	FUNC4(pdata, CFG_LINK_AGGR_RESUME_0_ADDR, TX_PORT0);

	FUNC3(pdata, RX_DV_GATE_REG_0_ADDR, &value);
	value &= ~TX_DV_GATE_EN0;
	value &= ~RX_DV_GATE_EN0;
	value |= RESUME_RX0;
	FUNC6(pdata, RX_DV_GATE_REG_0_ADDR, value);

	FUNC4(pdata, CFG_BYPASS_ADDR, RESUME_TX);
}
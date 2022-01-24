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
struct xgene_enet_pdata {scalar_t__ enet_id; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXGMAC_CONFIG_1 ; 
 int FUNC0 (int) ; 
 int CFG_RSIF_FPBUFF_TIMEOUT_EN ; 
 int DEF_QUANTA ; 
 int HSTLENCHK ; 
 int HSTPPEN ; 
 int NORM_PAUSE_OPCODE ; 
 int RESUME_TX ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XGENET_CSR_MULTI_DPF0_ADDR ; 
 int /*<<< orphan*/  XGENET_CSR_MULTI_DPF1_ADDR ; 
 int /*<<< orphan*/  XGENET_RX_DV_GATE_REG_0_ADDR ; 
 scalar_t__ XGENE_ENET1 ; 
 int /*<<< orphan*/  XG_CFG_BYPASS_ADDR ; 
 int XG_DEF_PAUSE_OFF_THRES ; 
 int XG_DEF_PAUSE_THRES ; 
 int /*<<< orphan*/  XG_ENET_SPARE_CFG_REG_1_ADDR ; 
 int /*<<< orphan*/  XG_ENET_SPARE_CFG_REG_ADDR ; 
 int /*<<< orphan*/  XG_RSIF_CLE_BUFF_THRESH ; 
 int /*<<< orphan*/  XG_RSIF_CONFIG1_REG_ADDR ; 
 int /*<<< orphan*/  XG_RSIF_CONFIG_REG_ADDR ; 
 int /*<<< orphan*/  XG_RSIF_PLC_CLE_BUFF_THRESH ; 
 int /*<<< orphan*/  XG_RXBUF_PAUSE_THRESH ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct xgene_enet_pdata*) ; 

__attribute__((used)) static void FUNC13(struct xgene_enet_pdata *pdata)
{
	u32 data;

	FUNC11(pdata);

	data = FUNC5(pdata, AXGMAC_CONFIG_1);
	data |= HSTPPEN;
	data &= ~HSTLENCHK;
	FUNC8(pdata, AXGMAC_CONFIG_1, data);

	FUNC12(pdata);

	FUNC4(pdata, XG_RSIF_CONFIG_REG_ADDR, &data);
	data |= CFG_RSIF_FPBUFF_TIMEOUT_EN;
	/* Errata 10GE_1 - FIFO threshold default value incorrect */
	FUNC1(&data, XG_RSIF_CLE_BUFF_THRESH);
	FUNC7(pdata, XG_RSIF_CONFIG_REG_ADDR, data);

	/* Errata 10GE_1 - FIFO threshold default value incorrect */
	FUNC4(pdata, XG_RSIF_CONFIG1_REG_ADDR, &data);
	FUNC2(&data, XG_RSIF_PLC_CLE_BUFF_THRESH);
	FUNC7(pdata, XG_RSIF_CONFIG1_REG_ADDR, data);

	FUNC4(pdata, XG_ENET_SPARE_CFG_REG_ADDR, &data);
	data |= FUNC0(12);
	FUNC7(pdata, XG_ENET_SPARE_CFG_REG_ADDR, data);
	FUNC7(pdata, XG_ENET_SPARE_CFG_REG_1_ADDR, 0x82);
	FUNC7(pdata, XGENET_RX_DV_GATE_REG_0_ADDR, 0);
	FUNC7(pdata, XG_CFG_BYPASS_ADDR, RESUME_TX);

	/* Configure HW pause frame generation */
	FUNC3(pdata, XGENET_CSR_MULTI_DPF0_ADDR, &data);
	data = (DEF_QUANTA << 16) | (data & 0xFFFF);
	FUNC6(pdata, XGENET_CSR_MULTI_DPF0_ADDR, data);

	if (pdata->enet_id != XGENE_ENET1) {
		FUNC3(pdata, XGENET_CSR_MULTI_DPF1_ADDR, &data);
		data = (NORM_PAUSE_OPCODE << 16) | (data & 0xFFFF);
		FUNC6(pdata, XGENET_CSR_MULTI_DPF1_ADDR, data);
	}

	data = (XG_DEF_PAUSE_OFF_THRES << 16) | XG_DEF_PAUSE_THRES;
	FUNC7(pdata, XG_RXBUF_PAUSE_THRESH, data);

	FUNC10(pdata, pdata->tx_pause);
	FUNC9(pdata, pdata->rx_pause);
}
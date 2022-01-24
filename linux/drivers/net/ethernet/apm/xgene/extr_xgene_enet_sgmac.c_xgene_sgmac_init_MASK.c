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
struct xgene_enet_pdata {scalar_t__ enet_id; int port_id; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; scalar_t__ mdio_driver; } ;

/* Variables and functions */
 int CFG_BYPASS_ADDR ; 
 int CFG_RSIF_FPBUFF_TIMEOUT_EN ; 
 int CSR_MULTI_DPF0_ADDR ; 
 int DEF_PAUSE_OFF_THRES ; 
 int DEF_PAUSE_THRES ; 
 int DEF_QUANTA ; 
 int ENET_SPARE_CFG_REG_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  MII_MGMT_CONFIG_ADDR ; 
 int MPA_IDLE_WITH_QMI_EMPTY ; 
 int NORM_PAUSE_OPCODE ; 
 int OFFSET_4 ; 
 int RESUME_RX0 ; 
 int RESUME_TX ; 
 int RSIF_CONFIG_REG_ADDR ; 
 int RXBUF_PAUSE_OFF_THRESH ; 
 int RXBUF_PAUSE_THRESH ; 
 int SG_RX_DV_GATE_REG_0_ADDR ; 
 scalar_t__ XGENE_ENET1 ; 
 scalar_t__ XGENE_ENET2 ; 
 int XG_CFG_BYPASS_ADDR ; 
 int XG_ENET_SPARE_CFG_REG_1_ADDR ; 
 int XG_ENET_SPARE_CFG_REG_ADDR ; 
 int XG_MCX_MULTI_DPF0_ADDR ; 
 int XG_MCX_MULTI_DPF1_ADDR ; 
 int XG_MCX_RX_DV_GATE_REG_0_ADDR ; 
 int XG_RSIF_CONFIG_REG_ADDR ; 
 int XG_RXBUF_PAUSE_THRESH ; 
 int FUNC1 (struct xgene_enet_pdata*,int) ; 
 int FUNC2 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xgene_enet_pdata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct xgene_enet_pdata*) ; 

__attribute__((used)) static void FUNC13(struct xgene_enet_pdata *p)
{
	u32 pause_thres_reg, pause_off_thres_reg;
	u32 enet_spare_cfg_reg, rsif_config_reg;
	u32 cfg_bypass_reg, rx_dv_gate_reg;
	u32 data, data1, data2, offset;
	u32 multi_dpf_reg;

	if (!(p->enet_id == XGENE_ENET2 && p->mdio_driver))
		FUNC9(p);

	FUNC12(p);
	FUNC11(p);
	FUNC10(p);

	if (p->enet_id == XGENE_ENET1) {
		enet_spare_cfg_reg = ENET_SPARE_CFG_REG_ADDR;
		rsif_config_reg = RSIF_CONFIG_REG_ADDR;
		cfg_bypass_reg = CFG_BYPASS_ADDR;
		offset = p->port_id * OFFSET_4;
		rx_dv_gate_reg = SG_RX_DV_GATE_REG_0_ADDR + offset;
	} else {
		enet_spare_cfg_reg = XG_ENET_SPARE_CFG_REG_ADDR;
		rsif_config_reg = XG_RSIF_CONFIG_REG_ADDR;
		cfg_bypass_reg = XG_CFG_BYPASS_ADDR;
		rx_dv_gate_reg = XG_MCX_RX_DV_GATE_REG_0_ADDR;
	}

	data = FUNC1(p, enet_spare_cfg_reg);
	data |= MPA_IDLE_WITH_QMI_EMPTY;
	FUNC4(p, enet_spare_cfg_reg, data);

	/* Adjust MDC clock frequency */
	data = FUNC2(p, MII_MGMT_CONFIG_ADDR);
	FUNC0(&data, 7);
	FUNC5(p, MII_MGMT_CONFIG_ADDR, data);

	/* Enable drop if bufpool not available */
	data = FUNC1(p, rsif_config_reg);
	data |= CFG_RSIF_FPBUFF_TIMEOUT_EN;
	FUNC4(p, rsif_config_reg, data);

	/* Configure HW pause frame generation */
	multi_dpf_reg = (p->enet_id == XGENE_ENET1) ? CSR_MULTI_DPF0_ADDR :
			 XG_MCX_MULTI_DPF0_ADDR;
	data = FUNC3(p, multi_dpf_reg);
	data = (DEF_QUANTA << 16) | (data & 0xffff);
	FUNC6(p, multi_dpf_reg, data);

	if (p->enet_id != XGENE_ENET1) {
		data = FUNC3(p, XG_MCX_MULTI_DPF1_ADDR);
		data =  (NORM_PAUSE_OPCODE << 16) | (data & 0xFFFF);
		FUNC6(p, XG_MCX_MULTI_DPF1_ADDR, data);
	}

	pause_thres_reg = (p->enet_id == XGENE_ENET1) ? RXBUF_PAUSE_THRESH :
			   XG_RXBUF_PAUSE_THRESH;
	pause_off_thres_reg = (p->enet_id == XGENE_ENET1) ?
			       RXBUF_PAUSE_OFF_THRESH : 0;

	if (p->enet_id == XGENE_ENET1) {
		data1 = FUNC1(p, pause_thres_reg);
		data2 = FUNC1(p, pause_off_thres_reg);

		if (!(p->port_id % 2)) {
			data1 = (data1 & 0xffff0000) | DEF_PAUSE_THRES;
			data2 = (data2 & 0xffff0000) | DEF_PAUSE_OFF_THRES;
		} else {
			data1 = (data1 & 0xffff) | (DEF_PAUSE_THRES << 16);
			data2 = (data2 & 0xffff) | (DEF_PAUSE_OFF_THRES << 16);
		}

		FUNC4(p, pause_thres_reg, data1);
		FUNC4(p, pause_off_thres_reg, data2);
	} else {
		data = (DEF_PAUSE_OFF_THRES << 16) | DEF_PAUSE_THRES;
		FUNC4(p, pause_thres_reg, data);
	}

	FUNC8(p, p->tx_pause);
	FUNC7(p, p->rx_pause);

	/* Bypass traffic gating */
	FUNC4(p, XG_ENET_SPARE_CFG_REG_1_ADDR, 0x84);
	FUNC4(p, cfg_bypass_reg, RESUME_TX);
	FUNC6(p, rx_dv_gate_reg, RESUME_RX0);
}
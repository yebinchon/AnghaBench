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
struct xgene_enet_pdata {int phy_speed; int /*<<< orphan*/  rx_delay; int /*<<< orphan*/  tx_delay; } ;

/* Variables and functions */
 int CFG_BYPASS_UNISEC_RX ; 
 int CFG_BYPASS_UNISEC_TX ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int CFG_SPEED_1250 ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  DEBUG_REG_ADDR ; 
 int ENET_GHD_MODE ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int ENET_LHD_MODE ; 
 int FULL_DUPLEX2 ; 
 int /*<<< orphan*/  ICM_CONFIG0_REG_0_ADDR ; 
 int /*<<< orphan*/  ICM_CONFIG2_REG_0_ADDR ; 
 int /*<<< orphan*/  INTERFACE_CONTROL_ADDR ; 
 int LENGTH_CHK ; 
 int /*<<< orphan*/  MAC_CONFIG_2_ADDR ; 
 int PAD_CRC ; 
 int /*<<< orphan*/  RGMII_REG_0_ADDR ; 
#define  SPEED_10 129 
#define  SPEED_100 128 
 int /*<<< orphan*/  FUNC5 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct xgene_enet_pdata *pdata)
{
	u32 icm0, icm2, mc2;
	u32 intf_ctl, rgmii, value;

	FUNC8(pdata, ICM_CONFIG0_REG_0_ADDR, &icm0);
	FUNC8(pdata, ICM_CONFIG2_REG_0_ADDR, &icm2);
	mc2 = FUNC7(pdata, MAC_CONFIG_2_ADDR);
	intf_ctl = FUNC7(pdata, INTERFACE_CONTROL_ADDR);
	FUNC6(pdata, RGMII_REG_0_ADDR, &rgmii);

	switch (pdata->phy_speed) {
	case SPEED_10:
		FUNC4(&mc2, 1);
		intf_ctl &= ~(ENET_LHD_MODE | ENET_GHD_MODE);
		FUNC0(&icm0, 0);
		FUNC3(&icm2, 500);
		rgmii &= ~CFG_SPEED_1250;
		break;
	case SPEED_100:
		FUNC4(&mc2, 1);
		intf_ctl &= ~ENET_GHD_MODE;
		intf_ctl |= ENET_LHD_MODE;
		FUNC0(&icm0, 1);
		FUNC3(&icm2, 80);
		rgmii &= ~CFG_SPEED_1250;
		break;
	default:
		FUNC4(&mc2, 2);
		intf_ctl &= ~ENET_LHD_MODE;
		intf_ctl |= ENET_GHD_MODE;
		FUNC0(&icm0, 2);
		FUNC3(&icm2, 0);
		FUNC2(&rgmii, pdata->tx_delay);
		FUNC1(&rgmii, pdata->rx_delay);
		rgmii |= CFG_SPEED_1250;

		FUNC6(pdata, DEBUG_REG_ADDR, &value);
		value |= CFG_BYPASS_UNISEC_TX | CFG_BYPASS_UNISEC_RX;
		FUNC9(pdata, DEBUG_REG_ADDR, value);
		break;
	}

	mc2 |= FULL_DUPLEX2 | PAD_CRC | LENGTH_CHK;
	FUNC10(pdata, MAC_CONFIG_2_ADDR, mc2);
	FUNC10(pdata, INTERFACE_CONTROL_ADDR, intf_ctl);
	FUNC9(pdata, RGMII_REG_0_ADDR, rgmii);
	FUNC5(pdata);

	FUNC11(pdata, ICM_CONFIG0_REG_0_ADDR, icm0);
	FUNC11(pdata, ICM_CONFIG2_REG_0_ADDR, icm2);
}
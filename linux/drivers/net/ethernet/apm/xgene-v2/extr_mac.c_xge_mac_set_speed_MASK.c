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
struct xge_pdata {int phy_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_MACMODE ; 
 int /*<<< orphan*/  CFG_SPEED_125 ; 
 int /*<<< orphan*/  CFG_WAITASYNCRD ; 
 int CFG_WAITASYNCRD_EN ; 
 int /*<<< orphan*/  CFG_WFIFOFULLTHR ; 
 int CRC_EN ; 
 int /*<<< orphan*/  ECM_CONFIG0_REG_0 ; 
 int FULL_DUPLEX ; 
 int /*<<< orphan*/  HD_MODE ; 
 int /*<<< orphan*/  ICM_CONFIG0_REG_0 ; 
 int /*<<< orphan*/  ICM_CONFIG2_REG_0 ; 
 int /*<<< orphan*/  INTERFACE_CONTROL ; 
 int /*<<< orphan*/  INTF_MODE ; 
 int /*<<< orphan*/  MAC_CONFIG_2 ; 
 int PAD_CRC ; 
 int /*<<< orphan*/  RGMII_REG_0 ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
#define  SPEED_10 129 
#define  SPEED_100 128 
 int FUNC2 (struct xge_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xge_pdata*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct xge_pdata *pdata)
{
	u32 icm0, icm2, ecm0, mc2;
	u32 intf_ctrl, rgmii;

	icm0 = FUNC2(pdata, ICM_CONFIG0_REG_0);
	icm2 = FUNC2(pdata, ICM_CONFIG2_REG_0);
	ecm0 = FUNC2(pdata, ECM_CONFIG0_REG_0);
	rgmii = FUNC2(pdata, RGMII_REG_0);
	mc2 = FUNC2(pdata, MAC_CONFIG_2);
	intf_ctrl = FUNC2(pdata, INTERFACE_CONTROL);
	icm2 |= CFG_WAITASYNCRD_EN;

	switch (pdata->phy_speed) {
	case SPEED_10:
		FUNC1(&mc2, INTF_MODE, 1);
		FUNC1(&intf_ctrl, HD_MODE, 0);
		FUNC1(&icm0, CFG_MACMODE, 0);
		FUNC1(&icm2, CFG_WAITASYNCRD, 500);
		FUNC0(&rgmii, CFG_SPEED_125, 0);
		break;
	case SPEED_100:
		FUNC1(&mc2, INTF_MODE, 1);
		FUNC1(&intf_ctrl, HD_MODE, 1);
		FUNC1(&icm0, CFG_MACMODE, 1);
		FUNC1(&icm2, CFG_WAITASYNCRD, 80);
		FUNC0(&rgmii, CFG_SPEED_125, 0);
		break;
	default:
		FUNC1(&mc2, INTF_MODE, 2);
		FUNC1(&intf_ctrl, HD_MODE, 2);
		FUNC1(&icm0, CFG_MACMODE, 2);
		FUNC1(&icm2, CFG_WAITASYNCRD, 16);
		FUNC0(&rgmii, CFG_SPEED_125, 1);
		break;
	}

	mc2 |= FULL_DUPLEX | CRC_EN | PAD_CRC;
	FUNC1(&ecm0, CFG_WFIFOFULLTHR, 0x32);

	FUNC3(pdata, MAC_CONFIG_2, mc2);
	FUNC3(pdata, INTERFACE_CONTROL, intf_ctrl);
	FUNC3(pdata, RGMII_REG_0, rgmii);
	FUNC3(pdata, ICM_CONFIG0_REG_0, icm0);
	FUNC3(pdata, ICM_CONFIG2_REG_0, icm2);
	FUNC3(pdata, ECM_CONFIG0_REG_0, ecm0);
}
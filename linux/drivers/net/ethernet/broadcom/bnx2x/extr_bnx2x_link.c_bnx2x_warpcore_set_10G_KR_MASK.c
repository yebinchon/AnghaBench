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
typedef  size_t u16 ;
struct link_vars {int dummy; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_reg_set {int member_2; int val; int /*<<< orphan*/  const reg; int /*<<< orphan*/  const devad; int /*<<< orphan*/  member_1; int /*<<< orphan*/  const member_0; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct bnx2x_reg_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDIO_AER_BLOCK_AER_REG ; 
#define  MDIO_AN_DEVAD 137 
#define  MDIO_PMA_DEVAD 136 
 int /*<<< orphan*/  MDIO_REG_BANK_AER_BLOCK ; 
#define  MDIO_WC_DEVAD 135 
#define  MDIO_WC_REG_AN_IEEE1BLK_AN_ADVERTISEMENT1 134 
#define  MDIO_WC_REG_CL72_USERB0_CL72_MISC1_CONTROL 133 
#define  MDIO_WC_REG_DIGITAL3_UP1 132 
#define  MDIO_WC_REG_DIGITAL5_MISC7 131 
 int /*<<< orphan*/  const MDIO_WC_REG_IEEE0BLK_AUTONEGNP ; 
#define  MDIO_WC_REG_IEEE0BLK_MIICNTL 130 
#define  MDIO_WC_REG_PMD_KR_CONTROL 129 
 int /*<<< orphan*/  MDIO_WC_REG_RX66_CONTROL ; 
#define  MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2 128 
 int /*<<< orphan*/  const MDIO_WC_REG_SERDESDIGITAL_MISC2 ; 
 int /*<<< orphan*/  const MDIO_WC_REG_TX66_CONTROL ; 
 int /*<<< orphan*/  const MDIO_WC_REG_XGXSBLK1_LANECTRL0 ; 
 int /*<<< orphan*/  const MDIO_WC_REG_XGXSBLK1_LANECTRL1 ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 
 size_t FUNC5 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct link_params*,struct bnx2x_phy*) ; 

__attribute__((used)) static void FUNC7(struct bnx2x_phy *phy,
				      struct link_params *params,
				      struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;
	u16 val16, i, lane;
	static struct bnx2x_reg_set reg_set[] = {
		/* Disable Autoneg */
		{MDIO_WC_DEVAD, MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2, 0x7},
		{MDIO_WC_DEVAD, MDIO_WC_REG_CL72_USERB0_CL72_MISC1_CONTROL,
			0x3f00},
		{MDIO_AN_DEVAD, MDIO_WC_REG_AN_IEEE1BLK_AN_ADVERTISEMENT1, 0},
		{MDIO_AN_DEVAD, MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x0},
		{MDIO_WC_DEVAD, MDIO_WC_REG_DIGITAL3_UP1, 0x1},
		{MDIO_WC_DEVAD, MDIO_WC_REG_DIGITAL5_MISC7, 0xa},
		/* Leave cl72 training enable, needed for KR */
		{MDIO_PMA_DEVAD, MDIO_WC_REG_PMD_KR_CONTROL, 0x2}
	};

	for (i = 0; i < FUNC0(reg_set); i++)
		FUNC4(bp, phy, reg_set[i].devad, reg_set[i].reg,
				 reg_set[i].val);

	lane = FUNC5(phy, params);
	/* Global registers */
	FUNC1(bp, phy, MDIO_REG_BANK_AER_BLOCK,
			  MDIO_AER_BLOCK_AER_REG, 0);
	/* Disable CL36 PCS Tx */
	FUNC2(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_XGXSBLK1_LANECTRL0, &val16);
	val16 &= ~(0x0011 << lane);
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_XGXSBLK1_LANECTRL0, val16);

	FUNC2(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_XGXSBLK1_LANECTRL1, &val16);
	val16 |= (0x0303 << (lane << 1));
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_XGXSBLK1_LANECTRL1, val16);
	/* Restore AER */
	FUNC6(params, phy);
	/* Set speed via PMA/PMD register */
	FUNC4(bp, phy, MDIO_PMA_DEVAD,
			 MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x2040);

	FUNC4(bp, phy, MDIO_PMA_DEVAD,
			 MDIO_WC_REG_IEEE0BLK_AUTONEGNP, 0xB);

	/* Enable encoded forced speed */
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_SERDESDIGITAL_MISC2, 0x30);

	/* Turn TX scramble payload only the 64/66 scrambler */
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_TX66_CONTROL, 0x9);

	/* Turn RX scramble payload only the 64/66 scrambler */
	FUNC3(bp, phy, MDIO_WC_DEVAD,
				 MDIO_WC_REG_RX66_CONTROL, 0xF9);

	/* Set and clear loopback to cause a reset to 64/66 decoder */
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x4000);
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x0);

}
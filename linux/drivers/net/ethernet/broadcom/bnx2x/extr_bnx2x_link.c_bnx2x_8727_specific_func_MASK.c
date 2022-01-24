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
typedef  int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int flags; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
#define  DISABLE_TX 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
#define  ENABLE_TX 129 
 int FLAGS_NOC ; 
 int FLAGS_SFP_NOT_APPROVED ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_RXCTRL ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_TXCTRL ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8727_PCS_OPT_CTRL ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
#define  PHY_INIT 128 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct link_params*,struct bnx2x_phy*,int) ; 

__attribute__((used)) static void FUNC4(struct bnx2x_phy *phy,
				     struct link_params *params,
				     u32 action)
{
	struct bnx2x *bp = params->bp;
	u16 val;
	switch (action) {
	case DISABLE_TX:
		FUNC3(params, phy, 0);
		break;
	case ENABLE_TX:
		if (!(phy->flags & FLAGS_SFP_NOT_APPROVED))
			FUNC3(params, phy, 1);
		break;
	case PHY_INIT:
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
				 (1<<2) | (1<<5));
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_TXCTRL,
				 0);
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x0006);
		/* Make MOD_ABS give interrupt on change */
		FUNC1(bp, phy, MDIO_PMA_DEVAD,
				MDIO_PMA_REG_8727_PCS_OPT_CTRL,
				&val);
		val |= (1<<12);
		if (phy->flags & FLAGS_NOC)
			val |= (3<<5);
		/* Set 8727 GPIOs to input to allow reading from the 8727 GPIO0
		 * status which reflect SFP+ module over-current
		 */
		if (!(phy->flags & FLAGS_NOC))
			val &= 0xff8f; /* Reset bits 4-6 */
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_8727_PCS_OPT_CTRL,
				 val);
		break;
	default:
		FUNC0(NETIF_MSG_LINK, "Function 0x%x not supported by 8727\n",
		   action);
		return;
	}
}
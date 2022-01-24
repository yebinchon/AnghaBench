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
struct meson8b_dwmac {int phy_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PHY_INTERFACE_MODE_RGMII 132 
#define  PHY_INTERFACE_MODE_RGMII_ID 131 
#define  PHY_INTERFACE_MODE_RGMII_RXID 130 
#define  PHY_INTERFACE_MODE_RGMII_TXID 129 
#define  PHY_INTERFACE_MODE_RMII 128 
 int /*<<< orphan*/  PRG_ETH0 ; 
 int /*<<< orphan*/  PRG_ETH0_EXT_PHY_MODE_MASK ; 
 int /*<<< orphan*/  PRG_ETH0_EXT_RGMII_MODE ; 
 int /*<<< orphan*/  PRG_ETH0_EXT_RMII_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct meson8b_dwmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct meson8b_dwmac *dwmac)
{
	switch (dwmac->phy_mode) {
	case PHY_INTERFACE_MODE_RGMII:
	case PHY_INTERFACE_MODE_RGMII_RXID:
	case PHY_INTERFACE_MODE_RGMII_ID:
	case PHY_INTERFACE_MODE_RGMII_TXID:
		/* enable RGMII mode */
		FUNC1(dwmac, PRG_ETH0,
					PRG_ETH0_EXT_PHY_MODE_MASK,
					PRG_ETH0_EXT_RGMII_MODE);
		break;
	case PHY_INTERFACE_MODE_RMII:
		/* disable RGMII mode -> enables RMII mode */
		FUNC1(dwmac, PRG_ETH0,
					PRG_ETH0_EXT_PHY_MODE_MASK,
					PRG_ETH0_EXT_RMII_MODE);
		break;
	default:
		FUNC0(dwmac->dev, "fail to set phy-mode %s\n",
			FUNC2(dwmac->phy_mode));
		return -EINVAL;
	}

	return 0;
}
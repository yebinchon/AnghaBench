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
typedef  int u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int ADIN1300_NRG_PD_EN ; 
 int ADIN1300_NRG_PD_TX_EN ; 
 int /*<<< orphan*/  ADIN1300_PHY_CTRL_STATUS2 ; 
 int EINVAL ; 
#define  ETHTOOL_PHY_EDPD_DFLT_TX_MSECS 129 
 int ETHTOOL_PHY_EDPD_DISABLE ; 
#define  ETHTOOL_PHY_EDPD_NO_TX 128 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev, u16 tx_interval)
{
	u16 val;

	if (tx_interval == ETHTOOL_PHY_EDPD_DISABLE)
		return FUNC0(phydev, ADIN1300_PHY_CTRL_STATUS2,
				(ADIN1300_NRG_PD_EN | ADIN1300_NRG_PD_TX_EN));

	val = ADIN1300_NRG_PD_EN;

	switch (tx_interval) {
	case 1000: /* 1 second */
		/* fallthrough */
	case ETHTOOL_PHY_EDPD_DFLT_TX_MSECS:
		val |= ADIN1300_NRG_PD_TX_EN;
		/* fallthrough */
	case ETHTOOL_PHY_EDPD_NO_TX:
		break;
	default:
		return -EINVAL;
	}

	return FUNC1(phydev, ADIN1300_PHY_CTRL_STATUS2,
			  (ADIN1300_NRG_PD_EN | ADIN1300_NRG_PD_TX_EN),
			  val);
}
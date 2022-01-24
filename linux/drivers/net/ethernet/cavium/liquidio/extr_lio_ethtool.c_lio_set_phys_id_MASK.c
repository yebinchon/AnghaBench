#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int maj; int min; int rev; } ;
struct TYPE_6__ {TYPE_1__ ver; } ;
struct octeon_device {int /*<<< orphan*/  chip_id; TYPE_2__ fw_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  phy_type; } ;
struct TYPE_8__ {TYPE_3__ s; } ;
struct oct_link_info {TYPE_4__ link; } ;
struct net_device {int dummy; } ;
struct lio {int phy_beacon_val; int led_ctrl_val; struct oct_link_info linfo; struct octeon_device* oct_dev; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;

/* Variables and functions */
 int EINVAL ; 
#define  ETHTOOL_ID_ACTIVE 131 
#define  ETHTOOL_ID_INACTIVE 130 
#define  ETHTOOL_ID_OFF 129 
#define  ETHTOOL_ID_ON 128 
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  LED_IDENTIFICATION_OFF ; 
 int /*<<< orphan*/  LED_IDENTIFICATION_ON ; 
 int /*<<< orphan*/  LIO68XX_LED_BEACON_ADDR ; 
 int LIO68XX_LED_BEACON_CFGON ; 
 int /*<<< orphan*/  LIO68XX_LED_CTRL_ADDR ; 
 int LIO68XX_LED_CTRL_CFGON ; 
 int /*<<< orphan*/  LIO_PHY_PORT_TP ; 
 int /*<<< orphan*/  OCTEON_CN23XX_PF_VID ; 
 int /*<<< orphan*/  OCTEON_CN66XX ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  VITESSE_PHY_GPIO_CFG ; 
 int /*<<< orphan*/  VITESSE_PHY_GPIO_DRIVEOFF ; 
 int /*<<< orphan*/  VITESSE_PHY_GPIO_DRIVEON ; 
 int /*<<< orphan*/  VITESSE_PHY_GPIO_HIGH ; 
 int /*<<< orphan*/  VITESSE_PHY_GPIO_LOW ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lio*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
			   enum ethtool_phys_id_state state)
{
	struct lio *lio = FUNC0(netdev);
	struct octeon_device *oct = lio->oct_dev;
	struct oct_link_info *linfo;
	int value, ret;
	u32 cur_ver;

	linfo = &lio->linfo;
	cur_ver = FUNC1(oct->fw_info.ver.maj,
			     oct->fw_info.ver.min,
			     oct->fw_info.ver.rev);

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		if (oct->chip_id == OCTEON_CN66XX) {
			FUNC2(netdev, VITESSE_PHY_GPIO_CFG,
					   VITESSE_PHY_GPIO_DRIVEON);
			return 2;

		} else if (oct->chip_id == OCTEON_CN68XX) {
			/* Save the current LED settings */
			ret = FUNC4(lio, 0,
						   LIO68XX_LED_BEACON_ADDR,
						   &lio->phy_beacon_val);
			if (ret)
				return ret;

			ret = FUNC4(lio, 0,
						   LIO68XX_LED_CTRL_ADDR,
						   &lio->led_ctrl_val);
			if (ret)
				return ret;

			/* Configure Beacon values */
			value = LIO68XX_LED_BEACON_CFGON;
			ret = FUNC4(lio, 1,
						   LIO68XX_LED_BEACON_ADDR,
						   &value);
			if (ret)
				return ret;

			value = LIO68XX_LED_CTRL_CFGON;
			ret = FUNC4(lio, 1,
						   LIO68XX_LED_CTRL_ADDR,
						   &value);
			if (ret)
				return ret;
		} else if (oct->chip_id == OCTEON_CN23XX_PF_VID) {
			FUNC3(netdev, LED_IDENTIFICATION_ON);
			if (linfo->link.s.phy_type == LIO_PHY_PORT_TP &&
			    cur_ver > FUNC1(1, 7, 2))
				return 2;
			else
				return 0;
		} else {
			return -EINVAL;
		}
		break;

	case ETHTOOL_ID_ON:
		if (oct->chip_id == OCTEON_CN23XX_PF_VID &&
		    linfo->link.s.phy_type == LIO_PHY_PORT_TP &&
		    cur_ver > FUNC1(1, 7, 2))
			FUNC3(netdev, LED_IDENTIFICATION_ON);
		else if (oct->chip_id == OCTEON_CN66XX)
			FUNC2(netdev, VITESSE_PHY_GPIO_CFG,
					   VITESSE_PHY_GPIO_HIGH);
		else
			return -EINVAL;

		break;

	case ETHTOOL_ID_OFF:
		if (oct->chip_id == OCTEON_CN23XX_PF_VID &&
		    linfo->link.s.phy_type == LIO_PHY_PORT_TP &&
		    cur_ver > FUNC1(1, 7, 2))
			FUNC3(netdev, LED_IDENTIFICATION_OFF);
		else if (oct->chip_id == OCTEON_CN66XX)
			FUNC2(netdev, VITESSE_PHY_GPIO_CFG,
					   VITESSE_PHY_GPIO_LOW);
		else
			return -EINVAL;

		break;

	case ETHTOOL_ID_INACTIVE:
		if (oct->chip_id == OCTEON_CN66XX) {
			FUNC2(netdev, VITESSE_PHY_GPIO_CFG,
					   VITESSE_PHY_GPIO_DRIVEOFF);
		} else if (oct->chip_id == OCTEON_CN68XX) {
			/* Restore LED settings */
			ret = FUNC4(lio, 1,
						   LIO68XX_LED_CTRL_ADDR,
						   &lio->led_ctrl_val);
			if (ret)
				return ret;

			ret = FUNC4(lio, 1,
						   LIO68XX_LED_BEACON_ADDR,
						   &lio->phy_beacon_val);
			if (ret)
				return ret;
		} else if (oct->chip_id == OCTEON_CN23XX_PF_VID) {
			FUNC3(netdev, LED_IDENTIFICATION_OFF);

			return 0;
		} else {
			return -EINVAL;
		}
		break;

	default:
		return -EINVAL;
	}

	return 0;
}
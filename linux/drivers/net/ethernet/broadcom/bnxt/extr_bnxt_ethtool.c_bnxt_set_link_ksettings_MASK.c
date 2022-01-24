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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
struct net_device {int dummy; } ;
struct ethtool_link_settings {scalar_t__ autoneg; scalar_t__ duplex; int /*<<< orphan*/  speed; } ;
struct ethtool_link_ksettings {struct ethtool_link_settings base; } ;
struct bnxt_link_info {scalar_t__ phy_type; scalar_t__ media_type; void* advertising; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  req_duplex; void* req_link_speed; void* support_auto_speeds; } ;
struct bnxt {int /*<<< orphan*/  link_lock; struct bnxt_link_info link_info; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  BNXT_AUTONEG_SPEED ; 
 int /*<<< orphan*/  FUNC0 (void*,struct ethtool_link_ksettings const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNXT_LINK_DUPLEX_FULL ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 scalar_t__ DUPLEX_HALF ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ PORT_PHY_QCFG_RESP_MEDIA_TYPE_TP ; 
 scalar_t__ PORT_PHY_QCFG_RESP_PHY_TYPE_BASET ; 
 scalar_t__ PORT_PHY_QCFG_RESP_PHY_TYPE_BASETE ; 
 int /*<<< orphan*/  advertising ; 
 void* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct bnxt* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev,
			   const struct ethtool_link_ksettings *lk_ksettings)
{
	struct bnxt *bp = FUNC7(dev);
	struct bnxt_link_info *link_info = &bp->link_info;
	const struct ethtool_link_settings *base = &lk_ksettings->base;
	bool set_pause = false;
	u16 fw_advertising = 0;
	u32 speed;
	int rc = 0;

	if (!FUNC1(bp))
		return -EOPNOTSUPP;

	FUNC4(&bp->link_lock);
	if (base->autoneg == AUTONEG_ENABLE) {
		FUNC0(fw_advertising, lk_ksettings,
					advertising);
		link_info->autoneg |= BNXT_AUTONEG_SPEED;
		if (!fw_advertising)
			link_info->advertising = link_info->support_auto_speeds;
		else
			link_info->advertising = fw_advertising;
		/* any change to autoneg will cause link change, therefore the
		 * driver should put back the original pause setting in autoneg
		 */
		set_pause = true;
	} else {
		u16 fw_speed;
		u8 phy_type = link_info->phy_type;

		if (phy_type == PORT_PHY_QCFG_RESP_PHY_TYPE_BASET  ||
		    phy_type == PORT_PHY_QCFG_RESP_PHY_TYPE_BASETE ||
		    link_info->media_type == PORT_PHY_QCFG_RESP_MEDIA_TYPE_TP) {
			FUNC6(dev, "10GBase-T devices must autoneg\n");
			rc = -EINVAL;
			goto set_setting_exit;
		}
		if (base->duplex == DUPLEX_HALF) {
			FUNC6(dev, "HALF DUPLEX is not supported!\n");
			rc = -EINVAL;
			goto set_setting_exit;
		}
		speed = base->speed;
		fw_speed = FUNC2(dev, speed);
		if (!fw_speed) {
			rc = -EINVAL;
			goto set_setting_exit;
		}
		link_info->req_link_speed = fw_speed;
		link_info->req_duplex = BNXT_LINK_DUPLEX_FULL;
		link_info->autoneg = 0;
		link_info->advertising = 0;
	}

	if (FUNC8(dev))
		rc = FUNC3(bp, set_pause, false);

set_setting_exit:
	FUNC5(&bp->link_lock);
	return rc;
}
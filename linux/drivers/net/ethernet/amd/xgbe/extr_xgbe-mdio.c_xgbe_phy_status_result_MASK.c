#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ethtool_link_ksettings {int dummy; } ;
struct TYPE_2__ {scalar_t__ autoneg; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; struct ethtool_link_ksettings lks; } ;
struct xgbe_prv_data {scalar_t__ an_again; TYPE_1__ phy; scalar_t__ parallel_detect; } ;
typedef  enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  SPEED_10000 ; 
 int /*<<< orphan*/  SPEED_2500 ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
#define  XGBE_MODE_KR 135 
#define  XGBE_MODE_KX_1000 134 
#define  XGBE_MODE_KX_2500 133 
#define  XGBE_MODE_SFI 132 
#define  XGBE_MODE_SGMII_100 131 
#define  XGBE_MODE_SGMII_1000 130 
#define  XGBE_MODE_UNKNOWN 129 
#define  XGBE_MODE_X 128 
 int /*<<< orphan*/  FUNC0 (struct ethtool_link_ksettings*) ; 
 int FUNC1 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int FUNC3 (struct xgbe_prv_data*) ; 
 scalar_t__ FUNC4 (struct xgbe_prv_data*,int) ; 

__attribute__((used)) static void FUNC5(struct xgbe_prv_data *pdata)
{
	struct ethtool_link_ksettings *lks = &pdata->phy.lks;
	enum xgbe_mode mode;

	FUNC0(lks);

	if ((pdata->phy.autoneg != AUTONEG_ENABLE) || pdata->parallel_detect)
		mode = FUNC1(pdata);
	else
		mode = FUNC3(pdata);

	switch (mode) {
	case XGBE_MODE_SGMII_100:
		pdata->phy.speed = SPEED_100;
		break;
	case XGBE_MODE_X:
	case XGBE_MODE_KX_1000:
	case XGBE_MODE_SGMII_1000:
		pdata->phy.speed = SPEED_1000;
		break;
	case XGBE_MODE_KX_2500:
		pdata->phy.speed = SPEED_2500;
		break;
	case XGBE_MODE_KR:
	case XGBE_MODE_SFI:
		pdata->phy.speed = SPEED_10000;
		break;
	case XGBE_MODE_UNKNOWN:
	default:
		pdata->phy.speed = SPEED_UNKNOWN;
	}

	pdata->phy.duplex = DUPLEX_FULL;

	if (FUNC4(pdata, mode) && pdata->an_again)
		FUNC2(pdata);
}
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
struct net_device {int dummy; } ;
struct ethtool_eee {scalar_t__ tx_lpi_timer; int advertised; int supported; scalar_t__ eee_enabled; scalar_t__ tx_lpi_enabled; } ;
struct bnxt_link_info {int autoneg; int /*<<< orphan*/  advertising; } ;
struct bnxt {int flags; scalar_t__ lpi_tmr_hi; scalar_t__ lpi_tmr_lo; struct bnxt_link_info link_info; struct ethtool_eee eee; } ;

/* Variables and functions */
 int BNXT_AUTONEG_SPEED ; 
 int BNXT_FLAG_EEE_CAP ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnxt*,int,int) ; 
 struct bnxt* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ethtool_eee *edata)
{
	struct bnxt *bp = FUNC3(dev);
	struct ethtool_eee *eee = &bp->eee;
	struct bnxt_link_info *link_info = &bp->link_info;
	u32 advertising =
		 FUNC1(link_info->advertising, 0);
	int rc = 0;

	if (!FUNC0(bp))
		return -EOPNOTSUPP;

	if (!(bp->flags & BNXT_FLAG_EEE_CAP))
		return -EOPNOTSUPP;

	if (!edata->eee_enabled)
		goto eee_ok;

	if (!(link_info->autoneg & BNXT_AUTONEG_SPEED)) {
		FUNC4(dev, "EEE requires autoneg\n");
		return -EINVAL;
	}
	if (edata->tx_lpi_enabled) {
		if (bp->lpi_tmr_hi && (edata->tx_lpi_timer > bp->lpi_tmr_hi ||
				       edata->tx_lpi_timer < bp->lpi_tmr_lo)) {
			FUNC4(dev, "Valid LPI timer range is %d and %d microsecs\n",
				    bp->lpi_tmr_lo, bp->lpi_tmr_hi);
			return -EINVAL;
		} else if (!bp->lpi_tmr_hi) {
			edata->tx_lpi_timer = eee->tx_lpi_timer;
		}
	}
	if (!edata->advertised) {
		edata->advertised = advertising & eee->supported;
	} else if (edata->advertised & ~advertising) {
		FUNC4(dev, "EEE advertised %x must be a subset of autoneg advertised speeds %x\n",
			    edata->advertised, advertising);
		return -EINVAL;
	}

	eee->advertised = edata->advertised;
	eee->tx_lpi_enabled = edata->tx_lpi_enabled;
	eee->tx_lpi_timer = edata->tx_lpi_timer;
eee_ok:
	eee->eee_enabled = edata->eee_enabled;

	if (FUNC5(dev))
		rc = FUNC2(bp, false, true);

	return rc;
}
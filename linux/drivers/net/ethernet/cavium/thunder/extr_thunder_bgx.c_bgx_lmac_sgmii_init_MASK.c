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
typedef  int u64 ;
struct lmac {int lmacid; int autoneg; scalar_t__ lmac_type; scalar_t__ phydev; } ;
struct bgx {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGX_CMRX_CFG ; 
 int /*<<< orphan*/  BGX_GMP_GMI_RXX_JABBER ; 
 int /*<<< orphan*/  BGX_GMP_GMI_TXX_APPEND ; 
 int /*<<< orphan*/  BGX_GMP_GMI_TXX_SGMII_CTL ; 
 int /*<<< orphan*/  BGX_GMP_GMI_TXX_THRESH ; 
 int /*<<< orphan*/  BGX_GMP_PCS_MISCX_CTL ; 
 int /*<<< orphan*/  BGX_GMP_PCS_MRX_CTL ; 
 int /*<<< orphan*/  BGX_GMP_PCS_MRX_STATUS ; 
 scalar_t__ BGX_MODE_QSGMII ; 
 scalar_t__ BGX_MODE_SGMII ; 
 int CMR_EN ; 
 int MAX_FRAME_SIZE ; 
 int PCS_MISC_CTL_DISP_EN ; 
 int PCS_MRX_CTL_AN_EN ; 
 int PCS_MRX_CTL_PWR_DN ; 
 int PCS_MRX_CTL_RESET ; 
 int PCS_MRX_CTL_RST_AN ; 
 int PCS_MRX_STATUS_AN_CPT ; 
 scalar_t__ FUNC0 (struct bgx*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct bgx *bgx, struct lmac *lmac)
{
	int lmacid = lmac->lmacid;
	u64 cfg;

	FUNC1(bgx, lmacid, BGX_GMP_GMI_TXX_THRESH, 0x30);
	/* max packet size */
	FUNC1(bgx, lmacid, BGX_GMP_GMI_RXX_JABBER, MAX_FRAME_SIZE);

	/* Disable frame alignment if using preamble */
	cfg = FUNC2(bgx, lmacid, BGX_GMP_GMI_TXX_APPEND);
	if (cfg & 1)
		FUNC3(bgx, lmacid, BGX_GMP_GMI_TXX_SGMII_CTL, 0);

	/* Enable lmac */
	FUNC1(bgx, lmacid, BGX_CMRX_CFG, CMR_EN);

	/* PCS reset */
	FUNC1(bgx, lmacid, BGX_GMP_PCS_MRX_CTL, PCS_MRX_CTL_RESET);
	if (FUNC0(bgx, lmacid, BGX_GMP_PCS_MRX_CTL,
			 PCS_MRX_CTL_RESET, true)) {
		FUNC4(&bgx->pdev->dev, "BGX PCS reset not completed\n");
		return -1;
	}

	/* power down, reset autoneg, autoneg enable */
	cfg = FUNC2(bgx, lmacid, BGX_GMP_PCS_MRX_CTL);
	cfg &= ~PCS_MRX_CTL_PWR_DN;
	cfg |= PCS_MRX_CTL_RST_AN;
	if (lmac->phydev) {
		cfg |= PCS_MRX_CTL_AN_EN;
	} else {
		/* In scenarios where PHY driver is not present or it's a
		 * non-standard PHY, FW sets AN_EN to inform Linux driver
		 * to do auto-neg and link polling or not.
		 */
		if (cfg & PCS_MRX_CTL_AN_EN)
			lmac->autoneg = true;
	}
	FUNC3(bgx, lmacid, BGX_GMP_PCS_MRX_CTL, cfg);

	if (lmac->lmac_type == BGX_MODE_QSGMII) {
		/* Disable disparity check for QSGMII */
		cfg = FUNC2(bgx, lmacid, BGX_GMP_PCS_MISCX_CTL);
		cfg &= ~PCS_MISC_CTL_DISP_EN;
		FUNC3(bgx, lmacid, BGX_GMP_PCS_MISCX_CTL, cfg);
		return 0;
	}

	if ((lmac->lmac_type == BGX_MODE_SGMII) && lmac->phydev) {
		if (FUNC0(bgx, lmacid, BGX_GMP_PCS_MRX_STATUS,
				 PCS_MRX_STATUS_AN_CPT, false)) {
			FUNC4(&bgx->pdev->dev, "BGX AN_CPT not completed\n");
			return -1;
		}
	}

	return 0;
}
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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct lmac {scalar_t__ lmac_type; int /*<<< orphan*/ * phydev; int /*<<< orphan*/  dmacs; int /*<<< orphan*/  is_sgmii; scalar_t__ check_link; int /*<<< orphan*/  dwork; } ;
struct bgx {struct lmac* lmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGX_CMRX_CFG ; 
 int /*<<< orphan*/  BGX_CMRX_RX_FIFO_LEN ; 
 int /*<<< orphan*/  BGX_CMRX_TX_FIFO_LEN ; 
 int /*<<< orphan*/  BGX_GMP_PCS_MRX_CTL ; 
 scalar_t__ BGX_MODE_10G_KR ; 
 scalar_t__ BGX_MODE_40G_KR ; 
 scalar_t__ BGX_MODE_XFI ; 
 scalar_t__ BGX_MODE_XLAUI ; 
 int /*<<< orphan*/  BGX_SPUX_CONTROL1 ; 
 int /*<<< orphan*/  CMR_EN ; 
 int /*<<< orphan*/  CMR_PKT_RX_EN ; 
 int /*<<< orphan*/  CMR_PKT_TX_EN ; 
 int /*<<< orphan*/  PCS_MRX_CTL_PWR_DN ; 
 int /*<<< orphan*/  SPU_CTL_LOW_POWER ; 
 int /*<<< orphan*/  FUNC0 (struct bgx*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bgx*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bgx*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bgx*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct bgx *bgx, u8 lmacid)
{
	struct lmac *lmac;
	u64 cfg;

	lmac = &bgx->lmac[lmacid];
	if (lmac->check_link) {
		/* Destroy work queue */
		FUNC5(&lmac->dwork);
		FUNC6(lmac->check_link);
	}

	/* Disable packet reception */
	cfg = FUNC3(bgx, lmacid, BGX_CMRX_CFG);
	cfg &= ~CMR_PKT_RX_EN;
	FUNC4(bgx, lmacid, BGX_CMRX_CFG, cfg);

	/* Give chance for Rx/Tx FIFO to get drained */
	FUNC1(bgx, lmacid, BGX_CMRX_RX_FIFO_LEN, (u64)0x1FFF, true);
	FUNC1(bgx, lmacid, BGX_CMRX_TX_FIFO_LEN, (u64)0x3FFF, true);

	/* Disable packet transmission */
	cfg = FUNC3(bgx, lmacid, BGX_CMRX_CFG);
	cfg &= ~CMR_PKT_TX_EN;
	FUNC4(bgx, lmacid, BGX_CMRX_CFG, cfg);

	/* Disable serdes lanes */
        if (!lmac->is_sgmii)
                FUNC2(bgx, lmacid,
                               BGX_SPUX_CONTROL1, SPU_CTL_LOW_POWER);
        else
                FUNC2(bgx, lmacid,
                               BGX_GMP_PCS_MRX_CTL, PCS_MRX_CTL_PWR_DN);

	/* Disable LMAC */
	cfg = FUNC3(bgx, lmacid, BGX_CMRX_CFG);
	cfg &= ~CMR_EN;
	FUNC4(bgx, lmacid, BGX_CMRX_CFG, cfg);

	FUNC0(bgx, lmacid);
	FUNC7(lmac->dmacs);

	if ((lmac->lmac_type != BGX_MODE_XFI) &&
	    (lmac->lmac_type != BGX_MODE_XLAUI) &&
	    (lmac->lmac_type != BGX_MODE_40G_KR) &&
	    (lmac->lmac_type != BGX_MODE_10G_KR) && lmac->phydev)
		FUNC8(lmac->phydev);

	lmac->phydev = NULL;
}
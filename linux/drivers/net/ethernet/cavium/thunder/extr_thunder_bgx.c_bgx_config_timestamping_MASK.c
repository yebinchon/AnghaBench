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
typedef  int /*<<< orphan*/  u64 ;
struct lmac {scalar_t__ lmac_type; } ;
struct bgx {struct lmac* lmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGX_GMP_GMI_RXX_FRM_CTL ; 
 scalar_t__ BGX_MODE_QSGMII ; 
 scalar_t__ BGX_MODE_RGMII ; 
 scalar_t__ BGX_MODE_SGMII ; 
 int /*<<< orphan*/  BGX_PKT_RX_PTP_EN ; 
 int /*<<< orphan*/  BGX_SMUX_RX_FRM_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct bgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bgx* FUNC2 (int,int) ; 

void FUNC3(int node, int bgx_idx, int lmacid, bool enable)
{
	struct bgx *bgx = FUNC2(node, bgx_idx);
	struct lmac *lmac;
	u64 csr_offset, cfg;

	if (!bgx)
		return;

	lmac = &bgx->lmac[lmacid];

	if (lmac->lmac_type == BGX_MODE_SGMII ||
	    lmac->lmac_type == BGX_MODE_QSGMII ||
	    lmac->lmac_type == BGX_MODE_RGMII)
		csr_offset = BGX_GMP_GMI_RXX_FRM_CTL;
	else
		csr_offset = BGX_SMUX_RX_FRM_CTL;

	cfg = FUNC0(bgx, lmacid, csr_offset);

	if (enable)
		cfg |= BGX_PKT_RX_PTP_EN;
	else
		cfg &= ~BGX_PKT_RX_PTP_EN;
	FUNC1(bgx, lmacid, csr_offset, cfg);
}
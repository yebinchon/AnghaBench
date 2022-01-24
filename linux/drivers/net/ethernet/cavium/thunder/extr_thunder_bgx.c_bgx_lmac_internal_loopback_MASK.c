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
struct lmac {scalar_t__ is_sgmii; } ;
struct bgx {struct lmac* lmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGX_GMP_PCS_MRX_CTL ; 
 int /*<<< orphan*/  BGX_SPUX_CONTROL1 ; 
 int /*<<< orphan*/  PCS_MRX_CTL_LOOPBACK1 ; 
 int /*<<< orphan*/  SPU_CTL_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct bgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bgx* FUNC2 (int,int) ; 

void FUNC3(int node, int bgx_idx,
				int lmac_idx, bool enable)
{
	struct bgx *bgx;
	struct lmac *lmac;
	u64    cfg;

	bgx = FUNC2(node, bgx_idx);
	if (!bgx)
		return;

	lmac = &bgx->lmac[lmac_idx];
	if (lmac->is_sgmii) {
		cfg = FUNC0(bgx, lmac_idx, BGX_GMP_PCS_MRX_CTL);
		if (enable)
			cfg |= PCS_MRX_CTL_LOOPBACK1;
		else
			cfg &= ~PCS_MRX_CTL_LOOPBACK1;
		FUNC1(bgx, lmac_idx, BGX_GMP_PCS_MRX_CTL, cfg);
	} else {
		cfg = FUNC0(bgx, lmac_idx, BGX_SPUX_CONTROL1);
		if (enable)
			cfg |= SPU_CTL_LOOPBACK;
		else
			cfg &= ~SPU_CTL_LOOPBACK;
		FUNC1(bgx, lmac_idx, BGX_SPUX_CONTROL1, cfg);
	}
}
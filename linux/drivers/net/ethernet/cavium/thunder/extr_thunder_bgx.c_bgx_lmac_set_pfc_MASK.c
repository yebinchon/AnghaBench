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
typedef  int u64 ;
struct pfc {scalar_t__ fc_tx; scalar_t__ fc_rx; } ;
struct lmac {scalar_t__ is_sgmii; } ;
struct bgx {struct lmac* lmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGX_SMUX_CBFC_CTL ; 
 int RX_EN ; 
 int TX_EN ; 
 int FUNC0 (struct bgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 struct bgx* FUNC2 (int,int) ; 

void FUNC3(int node, int bgx_idx, int lmacid, void *pause)
{
	struct pfc *pfc = (struct pfc *)pause;
	struct bgx *bgx = FUNC2(node, bgx_idx);
	struct lmac *lmac;
	u64 cfg;

	if (!bgx)
		return;
	lmac = &bgx->lmac[lmacid];
	if (lmac->is_sgmii)
		return;

	cfg = FUNC0(bgx, lmacid, BGX_SMUX_CBFC_CTL);
	cfg &= ~(RX_EN | TX_EN);
	cfg |= (pfc->fc_rx ? RX_EN : 0x00);
	cfg |= (pfc->fc_tx ? TX_EN : 0x00);
	FUNC1(bgx, lmacid, BGX_SMUX_CBFC_CTL, cfg);
}
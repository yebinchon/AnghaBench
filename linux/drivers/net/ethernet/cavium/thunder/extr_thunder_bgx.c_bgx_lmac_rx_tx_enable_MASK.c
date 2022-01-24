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
struct lmac {int /*<<< orphan*/  last_speed; int /*<<< orphan*/  link_up; } ;
struct bgx {scalar_t__ is_rgx; struct lmac* lmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGX_CMRX_CFG ; 
 int CMR_PKT_RX_EN ; 
 int CMR_PKT_TX_EN ; 
 int FUNC0 (struct bgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 struct bgx* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(int node, int bgx_idx, int lmacid, bool enable)
{
	struct bgx *bgx = FUNC2(node, bgx_idx);
	struct lmac *lmac;
	u64 cfg;

	if (!bgx)
		return;
	lmac = &bgx->lmac[lmacid];

	cfg = FUNC0(bgx, lmacid, BGX_CMRX_CFG);
	if (enable)
		cfg |= CMR_PKT_RX_EN | CMR_PKT_TX_EN;
	else
		cfg &= ~(CMR_PKT_RX_EN | CMR_PKT_TX_EN);
	FUNC1(bgx, lmacid, BGX_CMRX_CFG, cfg);

	if (bgx->is_rgx)
		FUNC3(enable ? lmac->link_up : 0, lmac->last_speed);
}
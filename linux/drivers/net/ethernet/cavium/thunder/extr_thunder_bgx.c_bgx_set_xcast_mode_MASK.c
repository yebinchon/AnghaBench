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
typedef  int u8 ;
typedef  int u64 ;
struct lmac {int dmacs_cfg; TYPE_1__* dmacs; } ;
struct bgx {struct lmac* lmac; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmac; } ;

/* Variables and functions */
 int BCAST_ACCEPT ; 
 int /*<<< orphan*/  BGX_CMRX_RX_DMAC_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BGX_XCAST_BCAST_ACCEPT ; 
 int BGX_XCAST_MCAST_ACCEPT ; 
 int BGX_XCAST_MCAST_FILTER ; 
 int CAM_ACCEPT ; 
 int /*<<< orphan*/  MCAST_MODE_ACCEPT ; 
 int /*<<< orphan*/  MCAST_MODE_CAM_FILTER ; 
 int /*<<< orphan*/  MCAST_MODE_MASK ; 
 int FUNC1 (struct bgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 struct bgx* FUNC4 (int,int) ; 

void FUNC5(int node, int bgx_idx, int lmacid, u8 mode)
{
	struct bgx *bgx = FUNC4(node, bgx_idx);
	struct lmac *lmac = NULL;
	u64 cfg = 0;
	u8 i = 0;

	if (!bgx)
		return;

	lmac = &bgx->lmac[lmacid];

	cfg = FUNC1(bgx, lmacid, BGX_CMRX_RX_DMAC_CTL);
	if (mode & BGX_XCAST_BCAST_ACCEPT)
		cfg |= BCAST_ACCEPT;
	else
		cfg &= ~BCAST_ACCEPT;

	/* disable all MCASTs and DMAC filtering */
	cfg &= ~(CAM_ACCEPT | FUNC0(MCAST_MODE_MASK));

	/* check requested bits and set filtergin mode appropriately */
	if (mode & (BGX_XCAST_MCAST_ACCEPT)) {
		cfg |= (FUNC0(MCAST_MODE_ACCEPT));
	} else if (mode & BGX_XCAST_MCAST_FILTER) {
		cfg |= (FUNC0(MCAST_MODE_CAM_FILTER) | CAM_ACCEPT);
		for (i = 0; i < lmac->dmacs_cfg; i++)
			FUNC3(bgx, lmacid,
						    lmac->dmacs[i].dmac, i);
	}
	FUNC2(bgx, lmacid, BGX_CMRX_RX_DMAC_CTL, cfg);
}
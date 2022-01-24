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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct lmac {int dmacs_count; } ;
struct bgx {struct lmac* lmac; } ;

/* Variables and functions */
 scalar_t__ BGX_CMR_RX_DMACX_CAM ; 
 int /*<<< orphan*/  FUNC0 (struct bgx*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bgx *bgx, int lmacid)
{
	struct lmac *lmac = NULL;
	u8  idx = 0;

	lmac = &bgx->lmac[lmacid];
	/* reset CAM filters */
	for (idx = 0; idx < lmac->dmacs_count; idx++)
		FUNC0(bgx, 0, BGX_CMR_RX_DMACX_CAM +
			      ((lmacid * lmac->dmacs_count) + idx) *
			      sizeof(u64), 0);
}
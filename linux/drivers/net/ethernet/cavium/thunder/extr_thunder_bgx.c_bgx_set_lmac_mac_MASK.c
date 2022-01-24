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
typedef  int /*<<< orphan*/  u8 ;
struct bgx {TYPE_1__* lmac; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct bgx* FUNC1 (int,int) ; 

void FUNC2(int node, int bgx_idx, int lmacid, const u8 *mac)
{
	struct bgx *bgx = FUNC1(node, bgx_idx);

	if (!bgx)
		return;

	FUNC0(bgx->lmac[lmacid].mac, mac);
}
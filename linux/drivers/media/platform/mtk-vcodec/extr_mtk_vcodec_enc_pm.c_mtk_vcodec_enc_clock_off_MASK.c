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
struct mtk_vcodec_clk {int clk_num; TYPE_1__* clk_info; } ;
struct mtk_vcodec_pm {int /*<<< orphan*/  larbvenclt; int /*<<< orphan*/  larbvenc; struct mtk_vcodec_clk venc_clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  vcodec_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct mtk_vcodec_pm *pm)
{
	struct mtk_vcodec_clk *enc_clk = &pm->venc_clk;
	int i = 0;

	FUNC1(pm->larbvenc);
	FUNC1(pm->larbvenclt);
	for (i = enc_clk->clk_num - 1; i >= 0; i--)
		FUNC0(enc_clk->clk_info[i].vcodec_clk);
}
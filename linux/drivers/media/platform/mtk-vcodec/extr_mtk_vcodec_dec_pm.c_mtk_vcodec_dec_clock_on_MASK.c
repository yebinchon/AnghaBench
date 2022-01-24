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
struct mtk_vcodec_pm {int /*<<< orphan*/  larbvdec; struct mtk_vcodec_clk vdec_clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  vcodec_clk; int /*<<< orphan*/  clk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

void FUNC4(struct mtk_vcodec_pm *pm)
{
	struct mtk_vcodec_clk *dec_clk = &pm->vdec_clk;
	int ret, i = 0;

	for (i = 0; i < dec_clk->clk_num; i++) {
		ret = FUNC1(dec_clk->clk_info[i].vcodec_clk);
		if (ret) {
			FUNC3("clk_prepare_enable %d %s fail %d", i,
				dec_clk->clk_info[i].clk_name, ret);
			goto error;
		}
	}

	ret = FUNC2(pm->larbvdec);
	if (ret) {
		FUNC3("mtk_smi_larb_get larbvdec fail %d", ret);
		goto error;
	}
	return;

error:
	for (i -= 1; i >= 0; i--)
		FUNC0(dec_clk->clk_info[i].vcodec_clk);
}
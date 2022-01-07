
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_vcodec_clk {int clk_num; TYPE_1__* clk_info; } ;
struct mtk_vcodec_pm {int larbvdec; struct mtk_vcodec_clk vdec_clk; } ;
struct TYPE_2__ {int vcodec_clk; } ;


 int clk_disable_unprepare (int ) ;
 int mtk_smi_larb_put (int ) ;

void mtk_vcodec_dec_clock_off(struct mtk_vcodec_pm *pm)
{
 struct mtk_vcodec_clk *dec_clk = &pm->vdec_clk;
 int i = 0;

 mtk_smi_larb_put(pm->larbvdec);
 for (i = dec_clk->clk_num - 1; i >= 0; i--)
  clk_disable_unprepare(dec_clk->clk_info[i].vcodec_clk);
}

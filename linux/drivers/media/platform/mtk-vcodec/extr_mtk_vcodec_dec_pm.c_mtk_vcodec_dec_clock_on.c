
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_vcodec_clk {int clk_num; TYPE_1__* clk_info; } ;
struct mtk_vcodec_pm {int larbvdec; struct mtk_vcodec_clk vdec_clk; } ;
struct TYPE_2__ {int vcodec_clk; int clk_name; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int mtk_smi_larb_get (int ) ;
 int mtk_v4l2_err (char*,int,...) ;

void mtk_vcodec_dec_clock_on(struct mtk_vcodec_pm *pm)
{
 struct mtk_vcodec_clk *dec_clk = &pm->vdec_clk;
 int ret, i = 0;

 for (i = 0; i < dec_clk->clk_num; i++) {
  ret = clk_prepare_enable(dec_clk->clk_info[i].vcodec_clk);
  if (ret) {
   mtk_v4l2_err("clk_prepare_enable %d %s fail %d", i,
    dec_clk->clk_info[i].clk_name, ret);
   goto error;
  }
 }

 ret = mtk_smi_larb_get(pm->larbvdec);
 if (ret) {
  mtk_v4l2_err("mtk_smi_larb_get larbvdec fail %d", ret);
  goto error;
 }
 return;

error:
 for (i -= 1; i >= 0; i--)
  clk_disable_unprepare(dec_clk->clk_info[i].vcodec_clk);
}

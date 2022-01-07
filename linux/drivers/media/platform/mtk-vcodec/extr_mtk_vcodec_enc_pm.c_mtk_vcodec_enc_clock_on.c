
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_vcodec_clk {int clk_num; TYPE_1__* clk_info; } ;
struct mtk_vcodec_pm {int larbvenc; int larbvenclt; struct mtk_vcodec_clk venc_clk; } ;
struct TYPE_2__ {int vcodec_clk; int clk_name; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int mtk_smi_larb_get (int ) ;
 int mtk_smi_larb_put (int ) ;
 int mtk_v4l2_err (char*,int,...) ;

void mtk_vcodec_enc_clock_on(struct mtk_vcodec_pm *pm)
{
 struct mtk_vcodec_clk *enc_clk = &pm->venc_clk;
 int ret, i = 0;

 for (i = 0; i < enc_clk->clk_num; i++) {
  ret = clk_prepare_enable(enc_clk->clk_info[i].vcodec_clk);
  if (ret) {
   mtk_v4l2_err("venc clk_prepare_enable %d %s fail %d", i,
    enc_clk->clk_info[i].clk_name, ret);
   goto clkerr;
  }
 }

 ret = mtk_smi_larb_get(pm->larbvenc);
 if (ret) {
  mtk_v4l2_err("mtk_smi_larb_get larb3 fail %d", ret);
  goto larbvencerr;
 }
 ret = mtk_smi_larb_get(pm->larbvenclt);
 if (ret) {
  mtk_v4l2_err("mtk_smi_larb_get larb4 fail %d", ret);
  goto larbvenclterr;
 }
 return;

larbvenclterr:
 mtk_smi_larb_put(pm->larbvenc);
larbvencerr:
clkerr:
 for (i -= 1; i >= 0; i--)
  clk_disable_unprepare(enc_clk->clk_info[i].vcodec_clk);
}

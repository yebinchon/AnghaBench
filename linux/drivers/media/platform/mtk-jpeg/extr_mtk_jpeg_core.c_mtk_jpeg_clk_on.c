
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_jpeg_dev {int clk_jdec; int clk_jdec_smi; int dev; int larb; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int mtk_smi_larb_get (int ) ;

__attribute__((used)) static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jpeg)
{
 int ret;

 ret = mtk_smi_larb_get(jpeg->larb);
 if (ret)
  dev_err(jpeg->dev, "mtk_smi_larb_get larbvdec fail %d\n", ret);
 clk_prepare_enable(jpeg->clk_jdec_smi);
 clk_prepare_enable(jpeg->clk_jdec);
}

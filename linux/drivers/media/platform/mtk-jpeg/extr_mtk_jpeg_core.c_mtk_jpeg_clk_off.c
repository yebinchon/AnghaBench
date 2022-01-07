
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_jpeg_dev {int larb; int clk_jdec_smi; int clk_jdec; } ;


 int clk_disable_unprepare (int ) ;
 int mtk_smi_larb_put (int ) ;

__attribute__((used)) static void mtk_jpeg_clk_off(struct mtk_jpeg_dev *jpeg)
{
 clk_disable_unprepare(jpeg->clk_jdec);
 clk_disable_unprepare(jpeg->clk_jdec_smi);
 mtk_smi_larb_put(jpeg->larb);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_nfc_clk {int nfi_clk; int pad_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int mtk_nfc_enable_clk(struct device *dev, struct mtk_nfc_clk *clk)
{
 int ret;

 ret = clk_prepare_enable(clk->nfi_clk);
 if (ret) {
  dev_err(dev, "failed to enable nfi clk\n");
  return ret;
 }

 ret = clk_prepare_enable(clk->pad_clk);
 if (ret) {
  dev_err(dev, "failed to enable pad clk\n");
  clk_disable_unprepare(clk->nfi_clk);
  return ret;
 }

 return 0;
}

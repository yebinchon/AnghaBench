
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_rga {int aclk; int sclk; int dev; int hclk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int rga_enable_clocks(struct rockchip_rga *rga)
{
 int ret;

 ret = clk_prepare_enable(rga->sclk);
 if (ret) {
  dev_err(rga->dev, "Cannot enable rga sclk: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(rga->aclk);
 if (ret) {
  dev_err(rga->dev, "Cannot enable rga aclk: %d\n", ret);
  goto err_disable_sclk;
 }

 ret = clk_prepare_enable(rga->hclk);
 if (ret) {
  dev_err(rga->dev, "Cannot enable rga hclk: %d\n", ret);
  goto err_disable_aclk;
 }

 return 0;

err_disable_sclk:
 clk_disable_unprepare(rga->sclk);
err_disable_aclk:
 clk_disable_unprepare(rga->aclk);

 return ret;
}

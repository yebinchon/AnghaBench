
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_smi {int clk_apb; int clk_smi; int clk_gals0; int clk_gals1; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int mtk_smi_clk_enable(const struct mtk_smi *smi)
{
 int ret;

 ret = clk_prepare_enable(smi->clk_apb);
 if (ret)
  return ret;

 ret = clk_prepare_enable(smi->clk_smi);
 if (ret)
  goto err_disable_apb;

 ret = clk_prepare_enable(smi->clk_gals0);
 if (ret)
  goto err_disable_smi;

 ret = clk_prepare_enable(smi->clk_gals1);
 if (ret)
  goto err_disable_gals0;

 return 0;

err_disable_gals0:
 clk_disable_unprepare(smi->clk_gals0);
err_disable_smi:
 clk_disable_unprepare(smi->clk_smi);
err_disable_apb:
 clk_disable_unprepare(smi->clk_apb);
 return ret;
}

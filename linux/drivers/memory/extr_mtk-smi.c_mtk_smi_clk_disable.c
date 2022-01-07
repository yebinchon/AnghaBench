
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_smi {int clk_apb; int clk_smi; int clk_gals0; int clk_gals1; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void mtk_smi_clk_disable(const struct mtk_smi *smi)
{
 clk_disable_unprepare(smi->clk_gals1);
 clk_disable_unprepare(smi->clk_gals0);
 clk_disable_unprepare(smi->clk_smi);
 clk_disable_unprepare(smi->clk_apb);
}

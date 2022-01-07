
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsdfec_clks {int axi_clk; int core_clk; int din_clk; int din_words_clk; int dout_clk; int dout_words_clk; int ctrl_clk; int status_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void xsdfec_disable_all_clks(struct xsdfec_clks *clks)
{
 clk_disable_unprepare(clks->status_clk);
 clk_disable_unprepare(clks->ctrl_clk);
 clk_disable_unprepare(clks->dout_words_clk);
 clk_disable_unprepare(clks->dout_clk);
 clk_disable_unprepare(clks->din_words_clk);
 clk_disable_unprepare(clks->din_clk);
 clk_disable_unprepare(clks->core_clk);
 clk_disable_unprepare(clks->axi_clk);
}

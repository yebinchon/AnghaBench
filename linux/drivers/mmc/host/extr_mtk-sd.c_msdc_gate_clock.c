
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {int h_clk; int bus_clk; int src_clk; int src_clk_cg; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void msdc_gate_clock(struct msdc_host *host)
{
 clk_disable_unprepare(host->src_clk_cg);
 clk_disable_unprepare(host->src_clk);
 clk_disable_unprepare(host->bus_clk);
 clk_disable_unprepare(host->h_clk);
}

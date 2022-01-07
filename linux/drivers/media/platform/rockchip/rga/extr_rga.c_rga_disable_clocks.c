
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_rga {int aclk; int hclk; int sclk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void rga_disable_clocks(struct rockchip_rga *rga)
{
 clk_disable_unprepare(rga->sclk);
 clk_disable_unprepare(rga->hclk);
 clk_disable_unprepare(rga->aclk);
}

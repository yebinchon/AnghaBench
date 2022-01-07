
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_nor {int nor_clk; int spi_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void mtk_nor_disable_clk(struct mtk_nor *mtk_nor)
{
 clk_disable_unprepare(mtk_nor->spi_clk);
 clk_disable_unprepare(mtk_nor->nor_clk);
}

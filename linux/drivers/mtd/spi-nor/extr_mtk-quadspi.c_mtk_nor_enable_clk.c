
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_nor {int spi_clk; int nor_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int mtk_nor_enable_clk(struct mtk_nor *mtk_nor)
{
 int ret;

 ret = clk_prepare_enable(mtk_nor->spi_clk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(mtk_nor->nor_clk);
 if (ret) {
  clk_disable_unprepare(mtk_nor->spi_clk);
  return ret;
 }

 return 0;
}

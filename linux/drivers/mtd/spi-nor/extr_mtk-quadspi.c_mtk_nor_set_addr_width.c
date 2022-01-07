
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int addr_width; } ;
struct mtk_nor {scalar_t__ base; int dev; struct spi_nor nor; } ;


 int MTK_NOR_4B_ADDR_EN ;
 scalar_t__ MTK_NOR_DUAL_REG ;
 int dev_warn (int ,char*,int) ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void mtk_nor_set_addr_width(struct mtk_nor *mtk_nor)
{
 u8 val;
 struct spi_nor *nor = &mtk_nor->nor;

 val = readb(mtk_nor->base + MTK_NOR_DUAL_REG);

 switch (nor->addr_width) {
 case 3:
  val &= ~MTK_NOR_4B_ADDR_EN;
  break;
 case 4:
  val |= MTK_NOR_4B_ADDR_EN;
  break;
 default:
  dev_warn(mtk_nor->dev, "Unexpected address width %u.\n",
    nor->addr_width);
  break;
 }

 writeb(val, mtk_nor->base + MTK_NOR_DUAL_REG);
}

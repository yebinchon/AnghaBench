
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_nor {scalar_t__ base; } ;


 scalar_t__ MTK_NOR_RADR0_REG ;
 scalar_t__ MTK_NOR_RADR3_REG ;
 int mtk_nor_set_addr_width (struct mtk_nor*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void mtk_nor_set_addr(struct mtk_nor *mtk_nor, u32 addr)
{
 int i;

 mtk_nor_set_addr_width(mtk_nor);

 for (i = 0; i < 3; i++) {
  writeb(addr & 0xff, mtk_nor->base + MTK_NOR_RADR0_REG + i * 4);
  addr >>= 8;
 }

 writeb(addr & 0xff, mtk_nor->base + MTK_NOR_RADR3_REG);
}

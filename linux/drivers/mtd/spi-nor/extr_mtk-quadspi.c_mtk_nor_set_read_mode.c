
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int read_proto; int read_opcode; } ;
struct mtk_nor {scalar_t__ base; struct spi_nor nor; } ;


 scalar_t__ MTK_NOR_CFG1_REG ;
 int MTK_NOR_DUAL_DISABLE ;
 int MTK_NOR_DUAL_READ_EN ;
 scalar_t__ MTK_NOR_DUAL_REG ;
 int MTK_NOR_FAST_READ ;
 scalar_t__ MTK_NOR_PRGDATA3_REG ;
 scalar_t__ MTK_NOR_PRGDATA4_REG ;
 int MTK_NOR_QUAD_READ_EN ;



 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void mtk_nor_set_read_mode(struct mtk_nor *mtk_nor)
{
 struct spi_nor *nor = &mtk_nor->nor;

 switch (nor->read_proto) {
 case 130:
  writeb(nor->read_opcode, mtk_nor->base +
         MTK_NOR_PRGDATA3_REG);
  writeb(MTK_NOR_FAST_READ, mtk_nor->base +
         MTK_NOR_CFG1_REG);
  break;
 case 129:
  writeb(nor->read_opcode, mtk_nor->base +
         MTK_NOR_PRGDATA3_REG);
  writeb(MTK_NOR_DUAL_READ_EN, mtk_nor->base +
         MTK_NOR_DUAL_REG);
  break;
 case 128:
  writeb(nor->read_opcode, mtk_nor->base +
         MTK_NOR_PRGDATA4_REG);
  writeb(MTK_NOR_QUAD_READ_EN, mtk_nor->base +
         MTK_NOR_DUAL_REG);
  break;
 default:
  writeb(MTK_NOR_DUAL_DISABLE, mtk_nor->base +
         MTK_NOR_DUAL_REG);
  break;
 }
}

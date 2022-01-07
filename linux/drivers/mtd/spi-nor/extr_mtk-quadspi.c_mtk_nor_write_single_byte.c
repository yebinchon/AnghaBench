
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_nor {scalar_t__ base; } ;


 int MTK_NOR_PIO_WR_CMD ;
 scalar_t__ MTK_NOR_WDATA_REG ;
 int mtk_nor_execute_cmd (struct mtk_nor*,int ) ;
 int mtk_nor_set_addr (struct mtk_nor*,int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int mtk_nor_write_single_byte(struct mtk_nor *mtk_nor,
         int addr, int length, u8 *data)
{
 int i, ret;

 mtk_nor_set_addr(mtk_nor, addr);

 for (i = 0; i < length; i++) {
  writeb(*data++, mtk_nor->base + MTK_NOR_WDATA_REG);
  ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_PIO_WR_CMD);
  if (ret < 0)
   return ret;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_nor {scalar_t__ base; } ;


 scalar_t__ MTK_NOR_PP_DATA_REG ;
 int MTK_NOR_WR_CMD ;
 int SFLASH_WRBUF_SIZE ;
 int mtk_nor_execute_cmd (struct mtk_nor*,int ) ;
 int mtk_nor_set_addr (struct mtk_nor*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtk_nor_write_buffer(struct mtk_nor *mtk_nor, int addr,
    const u8 *buf)
{
 int i, bufidx, data;

 mtk_nor_set_addr(mtk_nor, addr);

 bufidx = 0;
 for (i = 0; i < SFLASH_WRBUF_SIZE; i += 4) {
  data = buf[bufidx + 3]<<24 | buf[bufidx + 2]<<16 |
         buf[bufidx + 1]<<8 | buf[bufidx];
  bufidx += 4;
  writel(data, mtk_nor->base + MTK_NOR_PP_DATA_REG);
 }
 return mtk_nor_execute_cmd(mtk_nor, MTK_NOR_WR_CMD);
}

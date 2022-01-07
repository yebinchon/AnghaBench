
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_nor {scalar_t__ base; } ;


 scalar_t__ MTK_NOR_CFG2_REG ;
 int MTK_NOR_WR_BUF_ENABLE ;
 int readb_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mtk_nor_write_buffer_enable(struct mtk_nor *mtk_nor)
{
 u8 reg;





 writel(MTK_NOR_WR_BUF_ENABLE, mtk_nor->base + MTK_NOR_CFG2_REG);
 return readb_poll_timeout(mtk_nor->base + MTK_NOR_CFG2_REG, reg,
      0x01 == (reg & 0x01), 100, 10000);
}

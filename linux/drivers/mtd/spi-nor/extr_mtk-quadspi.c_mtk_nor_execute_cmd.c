
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_nor {scalar_t__ base; } ;


 scalar_t__ MTK_NOR_CMD_REG ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int mtk_nor_execute_cmd(struct mtk_nor *mtk_nor, u8 cmdval)
{
 int reg;
 u8 val = cmdval & 0x1f;

 writeb(cmdval, mtk_nor->base + MTK_NOR_CMD_REG);
 return readl_poll_timeout(mtk_nor->base + MTK_NOR_CMD_REG, reg,
      !(reg & val), 100, 10000);
}

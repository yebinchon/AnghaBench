
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {struct mtk_nor* priv; } ;
struct mtk_nor {int dev; scalar_t__ base; } ;


 int MTK_NOR_RDSR_CMD ;
 scalar_t__ MTK_NOR_RDSR_REG ;

 int dev_err (int ,char*) ;
 int mtk_nor_do_tx_rx (struct mtk_nor*,int,int *,int ,int*,int) ;
 int mtk_nor_execute_cmd (struct mtk_nor*,int ) ;
 int readb (scalar_t__) ;

__attribute__((used)) static int mtk_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
{
 int ret;
 struct mtk_nor *mtk_nor = nor->priv;

 switch (opcode) {
 case 128:
  ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_RDSR_CMD);
  if (ret < 0)
   return ret;
  if (len == 1)
   *buf = readb(mtk_nor->base + MTK_NOR_RDSR_REG);
  else
   dev_err(mtk_nor->dev, "len should be 1 for read status!\n");
  break;
 default:
  ret = mtk_nor_do_tx_rx(mtk_nor, opcode, ((void*)0), 0, buf, len);
  break;
 }
 return ret;
}

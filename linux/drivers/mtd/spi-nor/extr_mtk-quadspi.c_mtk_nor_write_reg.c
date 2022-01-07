
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {struct mtk_nor* priv; } ;
struct mtk_nor {int dev; } ;



 int dev_warn (int ,char*) ;
 int mtk_nor_do_tx_rx (struct mtk_nor*,int,int*,int,int *,int ) ;
 int mtk_nor_wr_sr (struct mtk_nor*,int) ;

__attribute__((used)) static int mtk_nor_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
        int len)
{
 int ret;
 struct mtk_nor *mtk_nor = nor->priv;

 switch (opcode) {
 case 128:

  ret = mtk_nor_wr_sr(mtk_nor, *buf);
  break;
 default:
  ret = mtk_nor_do_tx_rx(mtk_nor, opcode, buf, len, ((void*)0), 0);
  if (ret)
   dev_warn(mtk_nor->dev, "write reg failure!\n");
  break;
 }
 return ret;
}

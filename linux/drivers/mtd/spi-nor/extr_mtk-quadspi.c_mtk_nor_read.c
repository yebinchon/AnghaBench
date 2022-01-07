
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u8 ;
struct spi_nor {struct mtk_nor* priv; } ;
struct mtk_nor {scalar_t__ base; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int MTK_NOR_PIO_READ_CMD ;
 scalar_t__ MTK_NOR_RDATA_REG ;
 int mtk_nor_execute_cmd (struct mtk_nor*,int ) ;
 int mtk_nor_set_addr (struct mtk_nor*,int) ;
 int mtk_nor_set_read_mode (struct mtk_nor*) ;
 int readb (scalar_t__) ;

__attribute__((used)) static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
       u_char *buffer)
{
 int i, ret;
 int addr = (int)from;
 u8 *buf = (u8 *)buffer;
 struct mtk_nor *mtk_nor = nor->priv;


 mtk_nor_set_read_mode(mtk_nor);
 mtk_nor_set_addr(mtk_nor, addr);

 for (i = 0; i < length; i++) {
  ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_PIO_READ_CMD);
  if (ret < 0)
   return ret;
  buf[i] = readb(mtk_nor->base + MTK_NOR_RDATA_REG);
 }
 return length;
}

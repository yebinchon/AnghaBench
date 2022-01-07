
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int* bouncebuf; int (* read_reg ) (struct spi_nor*,int ,int*,int) ;int dev; scalar_t__ spimem; } ;
struct spi_mem_op {int dummy; } ;


 int SPINOR_OP_RDCR ;
 struct spi_mem_op SPI_MEM_OP (int ,int ,int ,int ) ;
 int SPI_MEM_OP_CMD (int ,int) ;
 int SPI_MEM_OP_DATA_IN (int,int*,int) ;
 int SPI_MEM_OP_NO_ADDR ;
 int SPI_MEM_OP_NO_DUMMY ;
 int dev_err (int ,char*,int) ;
 int spi_mem_exec_op (scalar_t__,struct spi_mem_op*) ;
 int stub1 (struct spi_nor*,int ,int*,int) ;

__attribute__((used)) static int read_cr(struct spi_nor *nor)
{
 int ret;

 if (nor->spimem) {
  struct spi_mem_op op =
   SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RDCR, 1),
       SPI_MEM_OP_NO_ADDR,
       SPI_MEM_OP_NO_DUMMY,
       SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));

  ret = spi_mem_exec_op(nor->spimem, &op);
 } else {
  ret = nor->read_reg(nor, SPINOR_OP_RDCR, nor->bouncebuf, 1);
 }

 if (ret < 0) {
  dev_err(nor->dev, "error %d reading CR\n", ret);
  return ret;
 }

 return nor->bouncebuf[0];
}

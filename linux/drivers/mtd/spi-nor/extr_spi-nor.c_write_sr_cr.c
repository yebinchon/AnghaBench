
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int (* write_reg ) (struct spi_nor*,int ,int *,int) ;int dev; scalar_t__ spimem; } ;
struct spi_mem_op {int dummy; } ;


 int EINVAL ;
 int SPINOR_OP_WRSR ;
 struct spi_mem_op SPI_MEM_OP (int ,int ,int ,int ) ;
 int SPI_MEM_OP_CMD (int ,int) ;
 int SPI_MEM_OP_DATA_OUT (int,int *,int) ;
 int SPI_MEM_OP_NO_ADDR ;
 int SPI_MEM_OP_NO_DUMMY ;
 int dev_err (int ,char*) ;
 int spi_mem_exec_op (scalar_t__,struct spi_mem_op*) ;
 int spi_nor_wait_till_ready (struct spi_nor*) ;
 int stub1 (struct spi_nor*,int ,int *,int) ;
 int write_enable (struct spi_nor*) ;

__attribute__((used)) static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
{
 int ret;

 write_enable(nor);

 if (nor->spimem) {
  struct spi_mem_op op =
   SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
       SPI_MEM_OP_NO_ADDR,
       SPI_MEM_OP_NO_DUMMY,
       SPI_MEM_OP_DATA_OUT(2, sr_cr, 1));

  ret = spi_mem_exec_op(nor->spimem, &op);
 } else {
  ret = nor->write_reg(nor, SPINOR_OP_WRSR, sr_cr, 2);
 }

 if (ret < 0) {
  dev_err(nor->dev,
   "error while writing configuration register\n");
  return -EINVAL;
 }

 ret = spi_nor_wait_till_ready(nor);
 if (ret) {
  dev_err(nor->dev,
   "timeout while writing configuration register\n");
  return ret;
 }

 return 0;
}

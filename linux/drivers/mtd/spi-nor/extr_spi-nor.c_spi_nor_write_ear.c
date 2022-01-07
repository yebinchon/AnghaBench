
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int (* write_reg ) (struct spi_nor*,int ,int *,int) ;int * bouncebuf; scalar_t__ spimem; } ;
struct spi_mem_op {int dummy; } ;


 int SPINOR_OP_WREAR ;
 struct spi_mem_op SPI_MEM_OP (int ,int ,int ,int ) ;
 int SPI_MEM_OP_CMD (int ,int) ;
 int SPI_MEM_OP_DATA_OUT (int,int *,int) ;
 int SPI_MEM_OP_NO_ADDR ;
 int SPI_MEM_OP_NO_DUMMY ;
 int spi_mem_exec_op (scalar_t__,struct spi_mem_op*) ;
 int stub1 (struct spi_nor*,int ,int *,int) ;

__attribute__((used)) static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
{
 nor->bouncebuf[0] = ear;

 if (nor->spimem) {
  struct spi_mem_op op =
   SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WREAR, 1),
       SPI_MEM_OP_NO_ADDR,
       SPI_MEM_OP_NO_DUMMY,
       SPI_MEM_OP_DATA_OUT(1, nor->bouncebuf, 1));

  return spi_mem_exec_op(nor->spimem, &op);
 }

 return nor->write_reg(nor, SPINOR_OP_WREAR, nor->bouncebuf, 1);
}

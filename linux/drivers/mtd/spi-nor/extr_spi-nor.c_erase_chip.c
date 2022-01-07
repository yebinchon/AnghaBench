
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct spi_nor {int (* write_reg ) (struct spi_nor*,int ,int *,int ) ;scalar_t__ spimem; TYPE_1__ mtd; int dev; } ;
struct spi_mem_op {int dummy; } ;


 int SPINOR_OP_CHIP_ERASE ;
 struct spi_mem_op SPI_MEM_OP (int ,int ,int ,int ) ;
 int SPI_MEM_OP_CMD (int ,int) ;
 int SPI_MEM_OP_NO_ADDR ;
 int SPI_MEM_OP_NO_DATA ;
 int SPI_MEM_OP_NO_DUMMY ;
 int dev_dbg (int ,char*,long long) ;
 int spi_mem_exec_op (scalar_t__,struct spi_mem_op*) ;
 int stub1 (struct spi_nor*,int ,int *,int ) ;

__attribute__((used)) static int erase_chip(struct spi_nor *nor)
{
 dev_dbg(nor->dev, " %lldKiB\n", (long long)(nor->mtd.size >> 10));

 if (nor->spimem) {
  struct spi_mem_op op =
   SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_CHIP_ERASE, 1),
       SPI_MEM_OP_NO_ADDR,
       SPI_MEM_OP_NO_DUMMY,
       SPI_MEM_OP_NO_DATA);

  return spi_mem_exec_op(nor->spimem, &op);
 }

 return nor->write_reg(nor, SPINOR_OP_CHIP_ERASE, ((void*)0), 0);
}

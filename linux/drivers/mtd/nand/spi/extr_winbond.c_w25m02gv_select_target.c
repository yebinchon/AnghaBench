
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinand_device {unsigned int* scratchbuf; int spimem; } ;
struct spi_mem_op {int dummy; } ;


 struct spi_mem_op SPI_MEM_OP (int ,int ,int ,int ) ;
 int SPI_MEM_OP_CMD (int,int) ;
 int SPI_MEM_OP_DATA_OUT (int,unsigned int*,int) ;
 int SPI_MEM_OP_NO_ADDR ;
 int SPI_MEM_OP_NO_DUMMY ;
 int spi_mem_exec_op (int ,struct spi_mem_op*) ;

__attribute__((used)) static int w25m02gv_select_target(struct spinand_device *spinand,
      unsigned int target)
{
 struct spi_mem_op op = SPI_MEM_OP(SPI_MEM_OP_CMD(0xc2, 1),
       SPI_MEM_OP_NO_ADDR,
       SPI_MEM_OP_NO_DUMMY,
       SPI_MEM_OP_DATA_OUT(1,
       spinand->scratchbuf,
       1));

 *spinand->scratchbuf = target;
 return spi_mem_exec_op(spinand->spimem, &op);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int spimem; } ;
struct spi_mem_op {int dummy; } ;


 int MACRONIX_ECCSR_MASK ;
 struct spi_mem_op SPI_MEM_OP (int ,int ,int ,int ) ;
 int SPI_MEM_OP_CMD (int,int) ;
 int SPI_MEM_OP_DATA_IN (int,int *,int) ;
 int SPI_MEM_OP_DUMMY (int,int) ;
 int SPI_MEM_OP_NO_ADDR ;
 int spi_mem_exec_op (int ,struct spi_mem_op*) ;

__attribute__((used)) static int mx35lf1ge4ab_get_eccsr(struct spinand_device *spinand, u8 *eccsr)
{
 struct spi_mem_op op = SPI_MEM_OP(SPI_MEM_OP_CMD(0x7c, 1),
       SPI_MEM_OP_NO_ADDR,
       SPI_MEM_OP_DUMMY(1, 1),
       SPI_MEM_OP_DATA_IN(1, eccsr, 1));

 int ret = spi_mem_exec_op(spinand->spimem, &op);
 if (ret)
  return ret;

 *eccsr &= MACRONIX_ECCSR_MASK;
 return 0;
}

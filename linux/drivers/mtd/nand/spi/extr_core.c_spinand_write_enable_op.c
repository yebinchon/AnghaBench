
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinand_device {int spimem; } ;
struct spi_mem_op {int dummy; } ;


 struct spi_mem_op SPINAND_WR_EN_DIS_OP (int) ;
 int spi_mem_exec_op (int ,struct spi_mem_op*) ;

__attribute__((used)) static int spinand_write_enable_op(struct spinand_device *spinand)
{
 struct spi_mem_op op = SPINAND_WR_EN_DIS_OP(1);

 return spi_mem_exec_op(spinand->spimem, &op);
}

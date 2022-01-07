
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinand_device {int spimem; } ;
struct spi_mem_op {int dummy; } ;


 struct spi_mem_op SPINAND_RESET_OP ;
 int spi_mem_exec_op (int ,struct spi_mem_op*) ;
 int spinand_wait (struct spinand_device*,int *) ;

__attribute__((used)) static int spinand_reset_op(struct spinand_device *spinand)
{
 struct spi_mem_op op = SPINAND_RESET_OP;
 int ret;

 ret = spi_mem_exec_op(spinand->spimem, &op);
 if (ret)
  return ret;

 return spinand_wait(spinand, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int * scratchbuf; int spimem; } ;
struct spi_mem_op {int dummy; } ;


 struct spi_mem_op SPINAND_GET_FEATURE_OP (int ,int *) ;
 int spi_mem_exec_op (int ,struct spi_mem_op*) ;

__attribute__((used)) static int spinand_read_reg_op(struct spinand_device *spinand, u8 reg, u8 *val)
{
 struct spi_mem_op op = SPINAND_GET_FEATURE_OP(reg,
            spinand->scratchbuf);
 int ret;

 ret = spi_mem_exec_op(spinand->spimem, &op);
 if (ret)
  return ret;

 *val = *spinand->scratchbuf;
 return 0;
}

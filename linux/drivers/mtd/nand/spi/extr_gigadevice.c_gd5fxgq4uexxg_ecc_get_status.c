
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int spimem; } ;
struct spi_mem_op {int dummy; } ;


 int EBADMSG ;
 int EINVAL ;
 int GD5FXGQ4UEXXG_REG_STATUS2 ;


 struct spi_mem_op SPINAND_GET_FEATURE_OP (int ,int*) ;
 int STATUS_ECC_MASK ;


 int spi_mem_exec_op (int ,struct spi_mem_op*) ;

__attribute__((used)) static int gd5fxgq4uexxg_ecc_get_status(struct spinand_device *spinand,
     u8 status)
{
 u8 status2;
 struct spi_mem_op op = SPINAND_GET_FEATURE_OP(GD5FXGQ4UEXXG_REG_STATUS2,
            &status2);
 int ret;

 switch (status & STATUS_ECC_MASK) {
 case 129:
  return 0;

 case 131:




  ret = spi_mem_exec_op(spinand->spimem, &op);
  if (ret)
   return ret;






  return ((status & STATUS_ECC_MASK) >> 2) |
   ((status2 & STATUS_ECC_MASK) >> 4);

 case 130:
  return 8;

 case 128:
  return -EBADMSG;

 default:
  break;
 }

 return -EINVAL;
}

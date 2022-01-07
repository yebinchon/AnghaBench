
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spinand_device {int spimem; } ;
struct spi_mem_op {int dummy; } ;
struct TYPE_2__ {int strength; } ;
struct nand_device {TYPE_1__ eccreq; } ;


 int EBADMSG ;
 int EINVAL ;
 struct spi_mem_op SPINAND_GET_FEATURE_OP (int,int*) ;

 int STATUS_ECC_MASK ;



 int WARN_ON (int) ;
 int spi_mem_exec_op (int ,struct spi_mem_op*) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

__attribute__((used)) static int tc58cxgxsx_ecc_get_status(struct spinand_device *spinand,
          u8 status)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 u8 mbf = 0;
 struct spi_mem_op op = SPINAND_GET_FEATURE_OP(0x30, &mbf);

 switch (status & STATUS_ECC_MASK) {
 case 130:
  return 0;

 case 129:
  return -EBADMSG;

 case 131:
 case 128:





  if (spi_mem_exec_op(spinand->spimem, &op))
   return nand->eccreq.strength;

  mbf >>= 4;

  if (WARN_ON(mbf > nand->eccreq.strength || !mbf))
   return nand->eccreq.strength;

  return mbf;

 default:
  break;
 }

 return -EINVAL;
}

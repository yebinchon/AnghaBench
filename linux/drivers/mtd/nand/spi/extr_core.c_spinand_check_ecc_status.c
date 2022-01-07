
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int (* get_status ) (struct spinand_device*,int) ;} ;
struct spinand_device {TYPE_1__ eccinfo; } ;
struct TYPE_4__ {int strength; } ;
struct nand_device {TYPE_2__ eccreq; } ;


 int EBADMSG ;
 int EINVAL ;

 int STATUS_ECC_MASK ;


 struct nand_device* spinand_to_nand (struct spinand_device*) ;
 int stub1 (struct spinand_device*,int) ;

__attribute__((used)) static int spinand_check_ecc_status(struct spinand_device *spinand, u8 status)
{
 struct nand_device *nand = spinand_to_nand(spinand);

 if (spinand->eccinfo.get_status)
  return spinand->eccinfo.get_status(spinand, status);

 switch (status & STATUS_ECC_MASK) {
 case 129:
  return 0;

 case 130:





  return nand->eccreq.strength;

 case 128:
  return -EBADMSG;

 default:
  break;
 }

 return -EINVAL;
}

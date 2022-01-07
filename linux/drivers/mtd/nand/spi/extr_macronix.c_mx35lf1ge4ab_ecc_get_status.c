
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spinand_device {int dummy; } ;
struct TYPE_2__ {int strength; } ;
struct nand_device {TYPE_1__ eccreq; } ;


 int EBADMSG ;
 int EINVAL ;

 int STATUS_ECC_MASK ;


 int WARN_ON (int) ;
 int mx35lf1ge4ab_get_eccsr (struct spinand_device*,int*) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

__attribute__((used)) static int mx35lf1ge4ab_ecc_get_status(struct spinand_device *spinand,
           u8 status)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 u8 eccsr;

 switch (status & STATUS_ECC_MASK) {
 case 129:
  return 0;

 case 128:
  return -EBADMSG;

 case 130:





  if (mx35lf1ge4ab_get_eccsr(spinand, &eccsr))
   return nand->eccreq.strength;

  if (WARN_ON(eccsr > nand->eccreq.strength || !eccsr))
   return nand->eccreq.strength;

  return eccsr;

 default:
  break;
 }

 return -EINVAL;
}

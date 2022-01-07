
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;


 int EBADMSG ;
 int EINVAL ;


 int PN26G0XA_STATUS_ECC_BITMASK ;



__attribute__((used)) static int pn26g0xa_ecc_get_status(struct spinand_device *spinand,
       u8 status)
{
 switch (status & PN26G0XA_STATUS_ECC_BITMASK) {
 case 128:
  return 0;

 case 131:
  return 7;

 case 130:
  return 8;

 case 129:
  return -EBADMSG;

 default:
  break;
 }

 return -EINVAL;
}

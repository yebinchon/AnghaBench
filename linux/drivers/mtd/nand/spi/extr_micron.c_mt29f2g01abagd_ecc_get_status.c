
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;


 int EBADMSG ;
 int EINVAL ;



 int MICRON_STATUS_ECC_MASK ;



__attribute__((used)) static int mt29f2g01abagd_ecc_get_status(struct spinand_device *spinand,
      u8 status)
{
 switch (status & MICRON_STATUS_ECC_MASK) {
 case 129:
  return 0;

 case 128:
  return -EBADMSG;

 case 132:
  return 3;

 case 131:
  return 6;

 case 130:
  return 8;

 default:
  break;
 }

 return -EINVAL;
}

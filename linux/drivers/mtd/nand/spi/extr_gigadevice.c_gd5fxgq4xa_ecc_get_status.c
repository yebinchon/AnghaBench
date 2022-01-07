
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;


 int EBADMSG ;
 int EINVAL ;


 int STATUS_ECC_MASK ;



__attribute__((used)) static int gd5fxgq4xa_ecc_get_status(struct spinand_device *spinand,
      u8 status)
{
 switch (status & STATUS_ECC_MASK) {
 case 129:
  return 0;

 case 131:

  return 7;

 case 130:
  return 8;

 case 128:
  return -EBADMSG;

 default:
  break;
 }

 return -EINVAL;
}

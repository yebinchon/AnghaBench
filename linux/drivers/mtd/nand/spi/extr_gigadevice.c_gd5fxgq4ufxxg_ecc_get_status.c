
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;


 int EBADMSG ;
 int EINVAL ;

 int GD5FXGQ4UXFXXG_STATUS_ECC_MASK ;



__attribute__((used)) static int gd5fxgq4ufxxg_ecc_get_status(struct spinand_device *spinand,
     u8 status)
{
 switch (status & GD5FXGQ4UXFXXG_STATUS_ECC_MASK) {
 case 129:
  return 0;

 case 130:
  return 3;

 case 128:
  return -EBADMSG;

 default:
  return ((status & GD5FXGQ4UXFXXG_STATUS_ECC_MASK) >> 4) + 2;
 }

 return -EINVAL;
}

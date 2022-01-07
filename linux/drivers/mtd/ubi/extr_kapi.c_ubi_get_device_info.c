
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device_info {int dummy; } ;
struct ubi_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int UBI_MAX_DEVICES ;
 int ubi_do_get_device_info (struct ubi_device*,struct ubi_device_info*) ;
 struct ubi_device* ubi_get_device (int) ;
 int ubi_put_device (struct ubi_device*) ;

int ubi_get_device_info(int ubi_num, struct ubi_device_info *di)
{
 struct ubi_device *ubi;

 if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
  return -EINVAL;
 ubi = ubi_get_device(ubi_num);
 if (!ubi)
  return -ENODEV;
 ubi_do_get_device_info(ubi, di);
 ubi_put_device(ubi);
 return 0;
}

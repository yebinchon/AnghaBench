
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int dummy; } ;


 int ENODEV ;
 struct ubi_device* ubi_get_device (int) ;
 int ubi_put_device (struct ubi_device*) ;
 int ubi_wl_flush (struct ubi_device*,int,int) ;

int ubi_flush(int ubi_num, int vol_id, int lnum)
{
 struct ubi_device *ubi;
 int err = 0;

 ubi = ubi_get_device(ubi_num);
 if (!ubi)
  return -ENODEV;

 err = ubi_wl_flush(ubi, vol_id, lnum);
 ubi_put_device(ubi);
 return err;
}

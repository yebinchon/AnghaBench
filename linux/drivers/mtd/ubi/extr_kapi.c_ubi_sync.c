
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int mtd; } ;


 int ENODEV ;
 int mtd_sync (int ) ;
 struct ubi_device* ubi_get_device (int) ;
 int ubi_put_device (struct ubi_device*) ;

int ubi_sync(int ubi_num)
{
 struct ubi_device *ubi;

 ubi = ubi_get_device(ubi_num);
 if (!ubi)
  return -ENODEV;

 mtd_sync(ubi->mtd);
 ubi_put_device(ubi);
 return 0;
}

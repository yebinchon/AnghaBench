
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hyperbus_device {scalar_t__ mtd; } ;


 int map_destroy (scalar_t__) ;
 int mtd_device_unregister (scalar_t__) ;

int hyperbus_unregister_device(struct hyperbus_device *hbdev)
{
 int ret = 0;

 if (hbdev && hbdev->mtd) {
  ret = mtd_device_unregister(hbdev->mtd);
  map_destroy(hbdev->mtd);
 }

 return ret;
}

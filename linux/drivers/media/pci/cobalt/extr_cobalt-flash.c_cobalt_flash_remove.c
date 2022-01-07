
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt {scalar_t__ mtd; } ;


 int map_destroy (scalar_t__) ;
 int mtd_device_unregister (scalar_t__) ;

void cobalt_flash_remove(struct cobalt *cobalt)
{
 if (cobalt->mtd) {
  mtd_device_unregister(cobalt->mtd);
  map_destroy(cobalt->mtd);
 }
}

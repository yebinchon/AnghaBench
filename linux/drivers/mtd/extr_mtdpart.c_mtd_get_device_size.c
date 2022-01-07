
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct mtd_info {int size; } ;
struct TYPE_2__ {struct mtd_info* parent; } ;


 int mtd_is_partition (struct mtd_info const*) ;
 TYPE_1__* mtd_to_part (struct mtd_info const*) ;

uint64_t mtd_get_device_size(const struct mtd_info *mtd)
{
 if (!mtd_is_partition(mtd))
  return mtd->size;

 return mtd_get_device_size(mtd_to_part(mtd)->parent);
}

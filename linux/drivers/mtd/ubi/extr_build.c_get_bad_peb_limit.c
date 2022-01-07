
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct ubi_device {TYPE_1__* mtd; } ;
struct TYPE_4__ {int size; } ;


 int mtd_div_by_eb (int ,TYPE_1__*) ;
 int mtd_get_device_size (TYPE_1__*) ;
 int mtd_max_bad_blocks (TYPE_1__*,int ,int ) ;
 int mult_frac (int,int,int) ;

__attribute__((used)) static int get_bad_peb_limit(const struct ubi_device *ubi, int max_beb_per1024)
{
 int limit, device_pebs;
 uint64_t device_size;

 if (!max_beb_per1024) {





  limit = mtd_max_bad_blocks(ubi->mtd, 0, ubi->mtd->size);
  if (limit < 0)
   return 0;
  return limit;
 }
 device_size = mtd_get_device_size(ubi->mtd);
 device_pebs = mtd_div_by_eb(device_size, ubi->mtd);
 limit = mult_frac(device_pebs, max_beb_per1024, 1024);


 if (mult_frac(limit, 1024, max_beb_per1024) < device_pebs)
  limit += 1;

 return limit;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int type; } ;




 int NOMMU_MAP_COPY ;
 int NOMMU_MAP_DIRECT ;
 int NOMMU_MAP_EXEC ;
 int NOMMU_MAP_READ ;
 int NOMMU_MAP_WRITE ;

unsigned mtd_mmap_capabilities(struct mtd_info *mtd)
{
 switch (mtd->type) {
 case 129:
  return NOMMU_MAP_COPY | NOMMU_MAP_DIRECT | NOMMU_MAP_EXEC |
   NOMMU_MAP_READ | NOMMU_MAP_WRITE;
 case 128:
  return NOMMU_MAP_COPY | NOMMU_MAP_DIRECT | NOMMU_MAP_EXEC |
   NOMMU_MAP_READ;
 default:
  return NOMMU_MAP_COPY;
 }
}

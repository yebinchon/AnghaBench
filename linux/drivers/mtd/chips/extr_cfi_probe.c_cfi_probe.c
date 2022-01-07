
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct map_info {int dummy; } ;


 int cfi_chip_probe ;
 struct mtd_info* mtd_do_chip_probe (struct map_info*,int *) ;

struct mtd_info *cfi_probe(struct map_info *map)
{




 return mtd_do_chip_probe(map, &cfi_chip_probe);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct map_info {int dummy; } ;


 int jedec_chip_probe ;
 struct mtd_info* mtd_do_chip_probe (struct map_info*,int *) ;

__attribute__((used)) static struct mtd_info *jedec_probe(struct map_info *map)
{




 return mtd_do_chip_probe(map, &jedec_chip_probe);
}

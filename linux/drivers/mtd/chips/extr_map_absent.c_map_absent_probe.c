
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int writesize; int erasesize; scalar_t__ flags; int _sync; int _write; int _read; int _erase; int size; int type; int name; struct map_info* priv; } ;
struct map_info {int size; int name; int * fldrv; } ;


 int GFP_KERNEL ;
 int MTD_ABSENT ;
 int PAGE_SIZE ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 struct mtd_info* kzalloc (int,int ) ;
 int map_absent_chipdrv ;
 int map_absent_erase ;
 int map_absent_read ;
 int map_absent_sync ;
 int map_absent_write ;

__attribute__((used)) static struct mtd_info *map_absent_probe(struct map_info *map)
{
 struct mtd_info *mtd;

 mtd = kzalloc(sizeof(*mtd), GFP_KERNEL);
 if (!mtd) {
  return ((void*)0);
 }

 map->fldrv = &map_absent_chipdrv;
 mtd->priv = map;
 mtd->name = map->name;
 mtd->type = MTD_ABSENT;
 mtd->size = map->size;
 mtd->_erase = map_absent_erase;
 mtd->_read = map_absent_read;
 mtd->_write = map_absent_write;
 mtd->_sync = map_absent_sync;
 mtd->flags = 0;
 mtd->erasesize = PAGE_SIZE;
 mtd->writesize = 1;

 __module_get(THIS_MODULE);
 return mtd;
}

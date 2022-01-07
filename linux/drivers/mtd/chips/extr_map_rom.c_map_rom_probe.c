
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int writesize; int writebufsize; int erasesize; int flags; int _erase; int _sync; int _write; int _read; int _unpoint; int _point; int size; int type; int name; struct map_info* priv; } ;
struct map_info {int size; int name; int * fldrv; } ;


 int GFP_KERNEL ;
 int MTD_CAP_ROM ;
 int MTD_ROM ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int default_erasesize (struct map_info*) ;
 struct mtd_info* kzalloc (int,int ) ;
 int maprom_chipdrv ;
 int maprom_erase ;
 int maprom_nop ;
 int maprom_point ;
 int maprom_read ;
 int maprom_unpoint ;
 int maprom_write ;

__attribute__((used)) static struct mtd_info *map_rom_probe(struct map_info *map)
{
 struct mtd_info *mtd;

 mtd = kzalloc(sizeof(*mtd), GFP_KERNEL);
 if (!mtd)
  return ((void*)0);

 map->fldrv = &maprom_chipdrv;
 mtd->priv = map;
 mtd->name = map->name;
 mtd->type = MTD_ROM;
 mtd->size = map->size;
 mtd->_point = maprom_point;
 mtd->_unpoint = maprom_unpoint;
 mtd->_read = maprom_read;
 mtd->_write = maprom_write;
 mtd->_sync = maprom_nop;
 mtd->_erase = maprom_erase;
 mtd->flags = MTD_CAP_ROM;
 mtd->erasesize = default_erasesize(map);
 mtd->writesize = 1;
 mtd->writebufsize = 1;

 __module_get(THIS_MODULE);
 return mtd;
}

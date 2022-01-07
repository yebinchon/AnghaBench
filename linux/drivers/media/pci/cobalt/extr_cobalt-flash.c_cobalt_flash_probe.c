
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; } ;
struct mtd_info {TYPE_1__ dev; int owner; } ;
struct map_info {int copy_to; int copy_from; int write; int read; int virt; int bankwidth; } ;
struct cobalt {TYPE_2__* pci_dev; struct mtd_info* mtd; int bar1; } ;
struct TYPE_4__ {int dev; } ;


 int BUG_ON (int) ;
 int THIS_MODULE ;
 int cobalt_err (char*) ;
 struct map_info cobalt_flash_map ;
 struct mtd_info* do_map_probe (char*,struct map_info*) ;
 int flash_copy_from ;
 int flash_copy_to ;
 int flash_read16 ;
 int flash_write16 ;
 int map_bankwidth_supported (int ) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;

int cobalt_flash_probe(struct cobalt *cobalt)
{
 struct map_info *map = &cobalt_flash_map;
 struct mtd_info *mtd;

 BUG_ON(!map_bankwidth_supported(map->bankwidth));
 map->virt = cobalt->bar1;
 map->read = flash_read16;
 map->write = flash_write16;
 map->copy_from = flash_copy_from;
 map->copy_to = flash_copy_to;

 mtd = do_map_probe("cfi_probe", map);
 cobalt->mtd = mtd;
 if (!mtd) {
  cobalt_err("Probe CFI flash failed!\n");
  return -1;
 }

 mtd->owner = THIS_MODULE;
 mtd->dev.parent = &cobalt->pci_dev->dev;
 mtd_device_register(mtd, ((void*)0), 0);
 return 0;
}

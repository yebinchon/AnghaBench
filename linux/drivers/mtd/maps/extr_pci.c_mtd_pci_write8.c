
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_pci_info {scalar_t__ (* translate ) (struct map_pci_info*,unsigned long) ;scalar_t__ base; } ;
struct map_info {int dummy; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 scalar_t__ stub1 (struct map_pci_info*,unsigned long) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void mtd_pci_write8(struct map_info *_map, map_word val, unsigned long ofs)
{
 struct map_pci_info *map = (struct map_pci_info *)_map;
 writeb(val.x[0], map->base + map->translate(map, ofs));
}

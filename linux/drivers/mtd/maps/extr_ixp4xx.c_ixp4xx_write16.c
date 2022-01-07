
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {scalar_t__ virt; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 int flash_write16 (int ,scalar_t__) ;

__attribute__((used)) static void ixp4xx_write16(struct map_info *map, map_word d, unsigned long adr)
{
 flash_write16(d.x[0], map->virt + adr);
}

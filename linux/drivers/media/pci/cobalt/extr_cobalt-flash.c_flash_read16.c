
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {int virt; } ;
struct TYPE_3__ {int* x; } ;
typedef TYPE_1__ map_word ;


 int ADRS (unsigned long) ;
 int cobalt_bus_read32 (int ,int ) ;

__attribute__((used)) static map_word flash_read16(struct map_info *map, unsigned long offset)
{
 map_word r;

 r.x[0] = cobalt_bus_read32(map->virt, ADRS(offset));
 if (offset & 0x2)
  r.x[0] >>= 16;
 else
  r.x[0] &= 0x0000ffff;

 return r;
}

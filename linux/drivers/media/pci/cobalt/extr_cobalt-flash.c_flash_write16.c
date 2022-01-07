
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct map_info {int virt; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 int ADRS (unsigned long) ;
 int cobalt_bus_write16 (int ,int ,int ) ;

__attribute__((used)) static void flash_write16(struct map_info *map, const map_word datum,
     unsigned long offset)
{
 u16 data = (u16)datum.x[0];

 cobalt_bus_write16(map->virt, ADRS(offset), data);
}

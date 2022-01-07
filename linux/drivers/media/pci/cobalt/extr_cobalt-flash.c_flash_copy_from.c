
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct map_info {int virt; } ;
typedef scalar_t__ ssize_t ;


 int ADRS (int) ;
 int cobalt_bus_read32 (int ,int ) ;

__attribute__((used)) static void flash_copy_from(struct map_info *map, void *to,
       unsigned long from, ssize_t len)
{
 u32 src = from;
 u8 *dest = to;
 u32 data;

 while (len) {
  data = cobalt_bus_read32(map->virt, ADRS(src));
  do {
   *dest = data >> (8 * (src & 3));
   src++;
   dest++;
   len--;
  } while (len && (src % 4));
 }
}

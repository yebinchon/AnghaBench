
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct map_info {int dummy; } ;
struct cfi_private {unsigned int device_type; } ;


 unsigned int cfi_interleave (struct cfi_private*) ;
 unsigned int map_bankwidth (struct map_info*) ;

uint32_t cfi_build_cmd_addr(uint32_t cmd_ofs,
    struct map_info *map, struct cfi_private *cfi)
{
 unsigned bankwidth = map_bankwidth(map);
 unsigned interleave = cfi_interleave(cfi);
 unsigned type = cfi->device_type;
 uint32_t addr;

 addr = (cmd_ofs * type) * interleave;






 if (((type * interleave) > bankwidth) && ((cmd_ofs & 0xff) == 0xaa))
  addr |= (type >> 1)*interleave;

 return addr;
}

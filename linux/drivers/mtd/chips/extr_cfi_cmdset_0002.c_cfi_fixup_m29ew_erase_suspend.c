
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {int dummy; } ;


 int CMD (int) ;
 scalar_t__ is_m29ew (struct cfi_private*) ;
 int map_write (struct map_info*,int ,unsigned long) ;

__attribute__((used)) static void cfi_fixup_m29ew_erase_suspend(struct map_info *map,
       unsigned long adr)
{
 struct cfi_private *cfi = map->fldrv_priv;

 if (is_m29ew(cfi))
  map_write(map, CMD(0xF0), adr);
}

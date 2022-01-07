
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int name; struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {TYPE_1__* cfiq; } ;
struct TYPE_2__ {int* EraseRegionInfo; } ;


 int pr_warn (char*,int ) ;

__attribute__((used)) static void fixup_s29gl032n_sectors(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;

 if ((cfi->cfiq->EraseRegionInfo[1] & 0xffff) == 0x007e) {
  cfi->cfiq->EraseRegionInfo[1] &= ~0x0040;
  pr_warn("%s: Bad S29GL032N CFI data; adjust from 127 to 63 sectors\n",
   mtd->name);
 }
}

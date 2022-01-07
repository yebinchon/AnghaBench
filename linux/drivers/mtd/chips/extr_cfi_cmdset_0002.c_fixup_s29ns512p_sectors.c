
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

__attribute__((used)) static void fixup_s29ns512p_sectors(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;





 cfi->cfiq->EraseRegionInfo[0] = 0x020001ff;
 pr_warn("%s: Bad S29NS512P CFI data; adjust to 512 sectors\n",
  mtd->name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {TYPE_1__* cfiq; } ;
struct TYPE_2__ {int NumEraseRegions; } ;



__attribute__((used)) static void fixup_old_sst_eraseregion(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;







 cfi->cfiq->NumEraseRegions = 1;
}

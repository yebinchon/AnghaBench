
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int flags; struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {struct cfi_pri_intelext* cmdset_priv; } ;
struct cfi_pri_intelext {int FeatureSupport; } ;


 int MTD_POWERUP_LOCK ;

__attribute__((used)) static void fixup_at49bv640dx_lock(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 struct cfi_pri_intelext *cfip = cfi->cmdset_priv;

 cfip->FeatureSupport |= (1 << 5);
 mtd->flags |= MTD_POWERUP_LOCK;
}

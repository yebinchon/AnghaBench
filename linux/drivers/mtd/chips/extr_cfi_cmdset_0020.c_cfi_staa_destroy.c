
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {struct cfi_private* cmdset_priv; } ;


 int kfree (struct cfi_private*) ;

__attribute__((used)) static void cfi_staa_destroy(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 kfree(cfi->cmdset_priv);
 kfree(cfi);
}

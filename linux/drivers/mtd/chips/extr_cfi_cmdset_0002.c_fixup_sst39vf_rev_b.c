
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {int addr_unlock1; int addr_unlock2; int sector_erase_cmd; } ;


 int CMD (int) ;
 int fixup_old_sst_eraseregion (struct mtd_info*) ;

__attribute__((used)) static void fixup_sst39vf_rev_b(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;

 fixup_old_sst_eraseregion(mtd);

 cfi->addr_unlock1 = 0x555;
 cfi->addr_unlock2 = 0x2AA;

 cfi->sector_erase_cmd = CMD(0x50);
}

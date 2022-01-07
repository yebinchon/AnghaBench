
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int name; struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {TYPE_1__* cfiq; } ;
struct TYPE_2__ {int* EraseRegionInfo; } ;


 int fixup_sst39vf_rev_b (struct mtd_info*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static void fixup_sst38vf640x_sectorsize(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;

 fixup_sst39vf_rev_b(mtd);





 cfi->cfiq->EraseRegionInfo[0] = 0x002003ff;
 pr_warn("%s: Bad 38VF640x CFI data; adjusting sector size from 64 to 8KiB\n",
  mtd->name);
}

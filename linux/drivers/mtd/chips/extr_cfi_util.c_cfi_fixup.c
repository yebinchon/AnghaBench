
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {scalar_t__ mfr; scalar_t__ id; } ;
struct cfi_fixup {scalar_t__ mfr; scalar_t__ id; int (* fixup ) (struct mtd_info*) ;} ;


 scalar_t__ CFI_ID_ANY ;
 scalar_t__ CFI_MFR_ANY ;
 int stub1 (struct mtd_info*) ;

void cfi_fixup(struct mtd_info *mtd, struct cfi_fixup *fixups)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 struct cfi_fixup *f;

 for (f=fixups; f->fixup; f++) {
  if (((f->mfr == CFI_MFR_ANY) || (f->mfr == cfi->mfr)) &&
      ((f->id == CFI_ID_ANY) || (f->id == cfi->id))) {
   f->fixup(mtd);
  }
 }
}

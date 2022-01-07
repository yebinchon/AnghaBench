
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_private {scalar_t__ mfr; scalar_t__ id; } ;
struct cfi_early_fixup {scalar_t__ mfr; scalar_t__ id; int (* fixup ) (struct cfi_private*) ;} ;


 scalar_t__ CFI_ID_ANY ;
 scalar_t__ CFI_MFR_ANY ;
 int stub1 (struct cfi_private*) ;

__attribute__((used)) static void cfi_early_fixup(struct cfi_private *cfi,
       const struct cfi_early_fixup *fixups)
{
 const struct cfi_early_fixup *f;

 for (f = fixups; f->fixup; f++) {
  if (((f->mfr == CFI_MFR_ANY) || (f->mfr == cfi->mfr)) &&
      ((f->id == CFI_ID_ANY) || (f->id == cfi->id))) {
   f->fixup(cfi);
  }
 }
}

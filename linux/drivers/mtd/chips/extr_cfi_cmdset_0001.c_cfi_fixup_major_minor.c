
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_private {scalar_t__ mfr; scalar_t__ id; } ;
struct cfi_pri_intelext {char MinorVersion; } ;


 scalar_t__ CFI_MFR_INTEL ;
 scalar_t__ PF38F4476 ;

__attribute__((used)) static void cfi_fixup_major_minor(struct cfi_private *cfi,
      struct cfi_pri_intelext *extp)
{
 if (cfi->mfr == CFI_MFR_INTEL &&
   cfi->id == PF38F4476 && extp->MinorVersion == '3')
  extp->MinorVersion = '1';
}

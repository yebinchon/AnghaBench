
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flchip {int dummy; } ;
struct cfi_private {scalar_t__ mfr; scalar_t__ id; } ;


 scalar_t__ CFI_MFR_INTEL ;
 scalar_t__ M28F00AP30 ;

__attribute__((used)) static int cfi_is_micron_28F00AP30(struct cfi_private *cfi, struct flchip *chip)
{




 if (cfi->mfr == CFI_MFR_INTEL && cfi->id == M28F00AP30)
  return 1;
 return 0;
}

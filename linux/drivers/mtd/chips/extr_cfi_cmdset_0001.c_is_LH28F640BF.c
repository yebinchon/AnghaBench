
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_private {scalar_t__ mfr; scalar_t__ id; } ;


 scalar_t__ CFI_MFR_SHARP ;
 scalar_t__ LH28F640BFHE_PBTL70A ;
 scalar_t__ LH28F640BFHE_PBTL90 ;
 scalar_t__ LH28F640BFHE_PTTL70A ;
 scalar_t__ LH28F640BFHE_PTTL90 ;

__attribute__((used)) static int is_LH28F640BF(struct cfi_private *cfi)
{

 if (cfi->mfr == CFI_MFR_SHARP && (
     cfi->id == LH28F640BFHE_PTTL90 || cfi->id == LH28F640BFHE_PBTL90 ||
     cfi->id == LH28F640BFHE_PTTL70A || cfi->id == LH28F640BFHE_PBTL70A))
  return 1;
 return 0;
}

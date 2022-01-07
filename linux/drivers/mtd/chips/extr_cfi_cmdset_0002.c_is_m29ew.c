
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_private {scalar_t__ mfr; scalar_t__ device_type; int id; } ;


 scalar_t__ CFI_DEVICETYPE_X16 ;
 scalar_t__ CFI_DEVICETYPE_X8 ;
 scalar_t__ CFI_MFR_INTEL ;

__attribute__((used)) static int is_m29ew(struct cfi_private *cfi)
{
 if (cfi->mfr == CFI_MFR_INTEL &&
     ((cfi->device_type == CFI_DEVICETYPE_X8 && (cfi->id & 0xff) == 0x7e) ||
      (cfi->device_type == CFI_DEVICETYPE_X16 && cfi->id == 0x227e)))
  return 1;
 return 0;
}

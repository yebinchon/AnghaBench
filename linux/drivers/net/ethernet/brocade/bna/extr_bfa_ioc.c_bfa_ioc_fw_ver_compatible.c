
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ major; scalar_t__ minor; scalar_t__ maint; scalar_t__ patch; scalar_t__ phase; scalar_t__ build; } ;
struct bfi_ioc_image_hdr {scalar_t__ signature; TYPE_1__ fwver; } ;


 int bfa_ioc_fwver_md5_check (struct bfi_ioc_image_hdr*,struct bfi_ioc_image_hdr*) ;

__attribute__((used)) static bool
bfa_ioc_fw_ver_compatible(struct bfi_ioc_image_hdr *drv_fwhdr,
     struct bfi_ioc_image_hdr *fwhdr_to_cmp)
{
 if (drv_fwhdr->signature != fwhdr_to_cmp->signature)
  return 0;
 if (drv_fwhdr->fwver.major != fwhdr_to_cmp->fwver.major)
  return 0;
 if (drv_fwhdr->fwver.minor != fwhdr_to_cmp->fwver.minor)
  return 0;
 if (drv_fwhdr->fwver.maint != fwhdr_to_cmp->fwver.maint)
  return 0;
 if (drv_fwhdr->fwver.patch == fwhdr_to_cmp->fwver.patch &&
     drv_fwhdr->fwver.phase == fwhdr_to_cmp->fwver.phase &&
     drv_fwhdr->fwver.build == fwhdr_to_cmp->fwver.build)
  return bfa_ioc_fwver_md5_check(drv_fwhdr, fwhdr_to_cmp);

 return 1;
}

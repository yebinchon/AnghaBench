
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major; } ;
struct bfi_ioc_image_hdr {TYPE_1__ fwver; } ;



__attribute__((used)) static bool
bfa_ioc_flash_fwver_valid(struct bfi_ioc_image_hdr *flash_fwhdr)
{
 if (flash_fwhdr->fwver.major == 0 || flash_fwhdr->fwver.major == 0xFF)
  return 0;

 return 1;
}

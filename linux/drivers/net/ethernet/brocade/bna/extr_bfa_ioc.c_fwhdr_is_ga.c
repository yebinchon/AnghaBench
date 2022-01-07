
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phase; scalar_t__ build; } ;
struct bfi_ioc_image_hdr {TYPE_1__ fwver; } ;



__attribute__((used)) static bool
fwhdr_is_ga(struct bfi_ioc_image_hdr *fwhdr)
{
 if (fwhdr->fwver.phase == 0 &&
     fwhdr->fwver.build == 0)
  return 0;

 return 1;
}

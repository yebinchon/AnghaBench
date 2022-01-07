
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_sdio {TYPE_1__* ci; } ;
struct TYPE_2__ {scalar_t__ chip; } ;


 scalar_t__ CY_CC_43012_CHIP_ID ;

__attribute__((used)) static bool brcmf_sdio_aos_no_decode(struct brcmf_sdio *bus)
{
 if (bus->ci->chip == CY_CC_43012_CHIP_ID)
  return 1;
 else
  return 0;
}

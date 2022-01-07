
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mmca_vsn; } ;
struct mmc_card {TYPE_1__ csd; } ;


 scalar_t__ CSD_SPEC_VER_3 ;

int mmc_can_ext_csd(struct mmc_card *card)
{
 return (card && card->csd.mmca_vsn > CSD_SPEC_VER_3);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_card {TYPE_2__* host; } ;
struct TYPE_3__ {scalar_t__ timing; } ;
struct TYPE_4__ {TYPE_1__ ios; } ;


 scalar_t__ MMC_TIMING_MMC_DDR52 ;

__attribute__((used)) static inline bool mmc_card_ddr52(struct mmc_card *card)
{
 return card->host->ios.timing == MMC_TIMING_MMC_DDR52;
}

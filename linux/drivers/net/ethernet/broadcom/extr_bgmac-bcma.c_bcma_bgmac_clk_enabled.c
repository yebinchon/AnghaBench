
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int core; } ;
struct bgmac {TYPE_1__ bcma; } ;


 int bcma_core_is_enabled (int ) ;

__attribute__((used)) static bool bcma_bgmac_clk_enabled(struct bgmac *bgmac)
{
 return bcma_core_is_enabled(bgmac->bcma.core);
}

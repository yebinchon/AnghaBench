
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int core; } ;
struct bgmac {TYPE_1__ bcma; } ;


 int bcma_core_enable (int ,int ) ;

__attribute__((used)) static void bcma_bgmac_clk_enable(struct bgmac *bgmac, u32 flags)
{
 bcma_core_enable(bgmac->bcma.core, flags);
}

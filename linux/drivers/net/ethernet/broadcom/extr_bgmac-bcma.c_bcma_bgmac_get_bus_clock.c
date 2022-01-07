
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_2__* core; } ;
struct bgmac {TYPE_3__ bcma; } ;
struct bcma_drv_cc {int dummy; } ;
struct TYPE_5__ {TYPE_1__* bus; } ;
struct TYPE_4__ {struct bcma_drv_cc drv_cc; } ;


 int bcma_pmu_get_bus_clock (struct bcma_drv_cc*) ;

__attribute__((used)) static u32 bcma_bgmac_get_bus_clock(struct bgmac *bgmac)
{
 struct bcma_drv_cc *cc = &bgmac->bcma.core->bus->drv_cc;

 return bcma_pmu_get_bus_clock(cc);
}

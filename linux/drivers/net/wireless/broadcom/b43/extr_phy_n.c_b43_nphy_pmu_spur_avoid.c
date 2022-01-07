
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct b43_wldev {TYPE_5__* dev; } ;
struct TYPE_10__ {int bus_type; TYPE_4__* sdev; TYPE_2__* bdev; } ;
struct TYPE_9__ {TYPE_3__* bus; } ;
struct TYPE_8__ {int chipco; } ;
struct TYPE_7__ {TYPE_1__* bus; } ;
struct TYPE_6__ {int drv_cc; } ;




 int bcma_pmu_spuravoid_pllupdate (int *,int) ;
 int ssb_pmu_spuravoid_pllupdate (int *,int) ;

__attribute__((used)) static void b43_nphy_pmu_spur_avoid(struct b43_wldev *dev, bool avoid)
{
 switch (dev->dev->bus_type) {
 }
}

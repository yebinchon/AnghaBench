
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_18__ {int type; } ;
struct b43_wldev {TYPE_9__ phy; TYPE_8__* dev; } ;
struct TYPE_17__ {scalar_t__ bus_type; TYPE_7__* bus_sprom; TYPE_6__* sdev; TYPE_3__* bdev; } ;
struct TYPE_16__ {int dev_id; } ;
struct TYPE_15__ {TYPE_5__* bus; } ;
struct TYPE_14__ {scalar_t__ bustype; TYPE_4__* host_pci; } ;
struct TYPE_13__ {int device; } ;
struct TYPE_12__ {TYPE_2__* bus; } ;
struct TYPE_11__ {scalar_t__ hosttype; TYPE_1__* host_pci; } ;
struct TYPE_10__ {int device; } ;


 scalar_t__ B43_BUS_BCMA ;
 scalar_t__ B43_BUS_SSB ;





 int B43_WARN_ON (int) ;
 scalar_t__ BCMA_HOSTTYPE_PCI ;
 scalar_t__ SSB_BUSTYPE_PCI ;

__attribute__((used)) static void b43_supported_bands(struct b43_wldev *dev, bool *have_2ghz_phy,
    bool *have_5ghz_phy)
{
 u16 dev_id = 0;
 if (dev->dev->bus_sprom->dev_id)
  dev_id = dev->dev->bus_sprom->dev_id;


 switch (dev_id) {
 case 0x4324:
 case 0x4312:
 case 0x4319:
 case 0x4328:
 case 0x432b:
 case 0x4350:
 case 0x4353:
 case 0x0576:
 case 0x435f:
 case 0x4331:
 case 0x4359:
 case 0x43a0:
 case 0x43b1:

  *have_2ghz_phy = 1;
  *have_5ghz_phy = 1;
  return;
 case 0x4321:

  if (dev->phy.type != 132)
   break;

 case 0x4313:
 case 0x431a:
 case 0x432a:
 case 0x432d:
 case 0x4352:
 case 0x435a:
 case 0x4333:
 case 0x43a2:
 case 0x43b3:

  *have_2ghz_phy = 0;
  *have_5ghz_phy = 1;
  return;
 }


 switch (dev->phy.type) {
 case 132:
 case 128:
 case 129:
 case 131:
 case 130:
  *have_2ghz_phy = 1;
  *have_5ghz_phy = 0;
  return;
 }

 B43_WARN_ON(1);
}

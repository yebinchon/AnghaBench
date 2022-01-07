
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ssb_bus {int chip_id; int chip_rev; } ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_5__ {struct ssb_bus* bus; } ;
struct TYPE_4__ {scalar_t__ bus_type; TYPE_2__* sdev; } ;


 scalar_t__ B43_BUS_SSB ;
 int SSB_IMCFGLO ;
 int SSB_IMCFGLO_REQTO ;
 int SSB_IMCFGLO_SERTO ;
 int ssb_commit_settings (struct ssb_bus*) ;
 int ssb_read32 (TYPE_2__*,int ) ;
 int ssb_write32 (TYPE_2__*,int ,int) ;

__attribute__((used)) static void b43_imcfglo_timeouts_workaround(struct b43_wldev *dev)
{
 struct ssb_bus *bus;
 u32 tmp;





 return;


 bus = dev->dev->sdev->bus;

 if ((bus->chip_id == 0x4311 && bus->chip_rev == 2) ||
     (bus->chip_id == 0x4312)) {
  tmp = ssb_read32(dev->dev->sdev, SSB_IMCFGLO);
  tmp &= ~SSB_IMCFGLO_REQTO;
  tmp &= ~SSB_IMCFGLO_SERTO;
  tmp |= 0x3;
  ssb_write32(dev->dev->sdev, SSB_IMCFGLO, tmp);
  ssb_commit_settings(bus);
 }
}

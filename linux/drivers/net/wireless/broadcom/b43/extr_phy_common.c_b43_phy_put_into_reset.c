
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int bus_type; int sdev; int bdev; } ;


 int B43_BCMA_IOCTL_GMODE ;
 int B43_BCMA_IOCTL_PHY_RESET ;


 int B43_TMSLOW_GMODE ;
 int B43_TMSLOW_PHYRESET ;
 int BCMA_IOCTL ;
 int BCMA_IOCTL_FGC ;
 int SSB_TMSLOW ;
 int SSB_TMSLOW_FGC ;
 int bcma_aread32 (int ,int ) ;
 int bcma_awrite32 (int ,int ,int ) ;
 int ssb_read32 (int ,int ) ;
 int ssb_write32 (int ,int ,int ) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

void b43_phy_put_into_reset(struct b43_wldev *dev)
{
 u32 tmp;

 switch (dev->dev->bus_type) {
 }
}

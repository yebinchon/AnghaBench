
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int bus_type; int sdev; int bdev; } ;


 int B43_BCMA_IOCTL_MACPHYCLKEN ;


 int B43_TMSLOW_MACPHYCLKEN ;
 int BCMA_IOCTL ;
 int SSB_TMSLOW ;
 int bcma_aread32 (int ,int ) ;
 int bcma_awrite32 (int ,int ,int ) ;
 int ssb_read32 (int ,int ) ;
 int ssb_write32 (int ,int ,int ) ;

void b43_mac_phy_clock_set(struct b43_wldev *dev, bool on)
{
 u32 tmp;

 switch (dev->dev->bus_type) {
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_device {int dummy; } ;
struct b43legacy_wldev {struct ssb_device* dev; } ;


 int B43legacy_TMSLOW_GMODE ;
 int B43legacy_TMSLOW_PHYRESET ;
 int SSB_TMSLOW ;
 int SSB_TMSLOW_FGC ;
 int msleep (int) ;
 int ssb_read32 (struct ssb_device*,int ) ;
 int ssb_write32 (struct ssb_device*,int ,int ) ;

__attribute__((used)) static void b43legacy_put_phy_into_reset(struct b43legacy_wldev *dev)
{
 struct ssb_device *sdev = dev->dev;
 u32 tmslow;

 tmslow = ssb_read32(sdev, SSB_TMSLOW);
 tmslow &= ~B43legacy_TMSLOW_GMODE;
 tmslow |= B43legacy_TMSLOW_PHYRESET;
 tmslow |= SSB_TMSLOW_FGC;
 ssb_write32(sdev, SSB_TMSLOW, tmslow);
 msleep(1);

 tmslow = ssb_read32(sdev, SSB_TMSLOW);
 tmslow &= ~SSB_TMSLOW_FGC;
 tmslow |= B43legacy_TMSLOW_PHYRESET;
 ssb_write32(sdev, SSB_TMSLOW, tmslow);
 msleep(1);
}

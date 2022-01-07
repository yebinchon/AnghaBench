
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_channel {int band; } ;
struct b43_phy {int gmode; scalar_t__ type; int rev; scalar_t__ supports_5ghz; scalar_t__ supports_2ghz; } ;
struct b43_wldev {TYPE_1__* dev; int wl; struct b43_phy phy; } ;
struct TYPE_2__ {int bus_type; int sdev; int bdev; } ;


 int B43_BCMA_IOCTL_GMODE ;


 scalar_t__ B43_PHYTYPE_N ;
 int B43_TMSLOW_GMODE ;
 int B43_WARN_ON (int) ;
 int BCMA_IOCTL ;
 int EINVAL ;
 int ENODEV ;


 int SSB_TMSLOW ;
 int b43_phy_init (struct b43_wldev*) ;
 int b43_phy_put_into_reset (struct b43_wldev*) ;
 int b43_phy_take_out_of_reset (struct b43_wldev*) ;
 int b43_software_rfkill (struct b43_wldev*,int) ;
 int b43_upload_initvals_band (struct b43_wldev*) ;
 int b43dbg (int ,char*,int ) ;
 int b43err (int ,char*,int ) ;
 int band_to_string (int) ;
 int bcma_aread32 (int ,int ) ;
 int bcma_awrite32 (int ,int ,int ) ;
 int ssb_read32 (int ,int ) ;
 int ssb_write32 (int ,int ,int ) ;

__attribute__((used)) static int b43_switch_band(struct b43_wldev *dev,
      struct ieee80211_channel *chan)
{
 struct b43_phy *phy = &dev->phy;
 bool gmode;
 u32 tmp;

 switch (chan->band) {
 case 128:
  gmode = 0;
  break;
 case 129:
  gmode = 1;
  break;
 default:
  B43_WARN_ON(1);
  return -EINVAL;
 }

 if (!((gmode && phy->supports_2ghz) ||
       (!gmode && phy->supports_5ghz))) {
  b43err(dev->wl, "This device doesn't support %s-GHz band\n",
         band_to_string(chan->band));
  return -ENODEV;
 }

 if (!!phy->gmode == !!gmode) {

  return 0;
 }

 b43dbg(dev->wl, "Switching to %s GHz band\n",
        band_to_string(chan->band));


 if (!(phy->type == B43_PHYTYPE_N && phy->rev >= 3))
  b43_software_rfkill(dev, 1);

 phy->gmode = gmode;
 b43_phy_put_into_reset(dev);
 switch (dev->dev->bus_type) {
 }
 b43_phy_take_out_of_reset(dev);

 b43_upload_initvals_band(dev);

 b43_phy_init(dev);

 return 0;
}

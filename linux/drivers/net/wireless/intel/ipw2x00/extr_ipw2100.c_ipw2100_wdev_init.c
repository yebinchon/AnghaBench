
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wireless_dev {TYPE_3__* wiphy; } ;
struct net_device {int dummy; } ;
struct libipw_geo {int bg_channels; TYPE_1__* bg; } ;
struct ipw2100_priv {TYPE_2__* pci_dev; TYPE_5__* ieee; int mac_addr; } ;
struct ieee80211_supported_band {size_t band; int n_channels; int n_bitrates; int bitrates; TYPE_6__* channels; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_11__ {size_t band; int flags; int max_power; int hw_value; int center_freq; } ;
struct TYPE_10__ {struct ieee80211_supported_band bg_band; struct wireless_dev wdev; } ;
struct TYPE_9__ {int n_cipher_suites; int cipher_suites; struct ieee80211_supported_band** bands; int perm_addr; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int flags; int max_power; int channel; int freq; } ;


 int ARRAY_SIZE (int ) ;
 int EIO ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_RADAR ;
 int LIBIPW_CH_NO_IBSS ;
 int LIBIPW_CH_PASSIVE_ONLY ;
 int LIBIPW_CH_RADAR_DETECT ;
 size_t NL80211_BAND_2GHZ ;
 int RATE_COUNT ;
 int ipw2100_bg_rates ;
 int ipw2100_down (struct ipw2100_priv*) ;
 int ipw_cipher_suites ;
 TYPE_6__* kcalloc (int,int,int ) ;
 struct libipw_geo* libipw_get_geo (TYPE_5__*) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int set_wiphy_dev (TYPE_3__*,int *) ;
 scalar_t__ wiphy_register (TYPE_3__*) ;

__attribute__((used)) static int ipw2100_wdev_init(struct net_device *dev)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 const struct libipw_geo *geo = libipw_get_geo(priv->ieee);
 struct wireless_dev *wdev = &priv->ieee->wdev;
 int i;

 memcpy(wdev->wiphy->perm_addr, priv->mac_addr, ETH_ALEN);


 if (geo->bg_channels) {
  struct ieee80211_supported_band *bg_band = &priv->ieee->bg_band;

  bg_band->band = NL80211_BAND_2GHZ;
  bg_band->n_channels = geo->bg_channels;
  bg_band->channels = kcalloc(geo->bg_channels,
         sizeof(struct ieee80211_channel),
         GFP_KERNEL);
  if (!bg_band->channels) {
   ipw2100_down(priv);
   return -ENOMEM;
  }

  for (i = 0; i < geo->bg_channels; i++) {
   bg_band->channels[i].band = NL80211_BAND_2GHZ;
   bg_band->channels[i].center_freq = geo->bg[i].freq;
   bg_band->channels[i].hw_value = geo->bg[i].channel;
   bg_band->channels[i].max_power = geo->bg[i].max_power;
   if (geo->bg[i].flags & LIBIPW_CH_PASSIVE_ONLY)
    bg_band->channels[i].flags |=
     IEEE80211_CHAN_NO_IR;
   if (geo->bg[i].flags & LIBIPW_CH_NO_IBSS)
    bg_band->channels[i].flags |=
     IEEE80211_CHAN_NO_IR;
   if (geo->bg[i].flags & LIBIPW_CH_RADAR_DETECT)
    bg_band->channels[i].flags |=
     IEEE80211_CHAN_RADAR;



  }

  bg_band->bitrates = ipw2100_bg_rates;
  bg_band->n_bitrates = RATE_COUNT;

  wdev->wiphy->bands[NL80211_BAND_2GHZ] = bg_band;
 }

 wdev->wiphy->cipher_suites = ipw_cipher_suites;
 wdev->wiphy->n_cipher_suites = ARRAY_SIZE(ipw_cipher_suites);

 set_wiphy_dev(wdev->wiphy, &priv->pci_dev->dev);
 if (wiphy_register(wdev->wiphy))
  return -EIO;
 return 0;
}

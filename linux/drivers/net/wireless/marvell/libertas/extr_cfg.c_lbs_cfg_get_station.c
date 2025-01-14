
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct TYPE_8__ {int legacy; } ;
struct station_info {int filled; TYPE_3__ txrate; int signal; int rx_packets; int rx_bytes; int tx_packets; int tx_bytes; } ;
struct net_device {int dummy; } ;
struct lbs_private {scalar_t__ cur_rate; TYPE_2__* dev; } ;
typedef int s8 ;
struct TYPE_9__ {scalar_t__ hw_value; int bitrate; } ;
struct TYPE_6__ {int rx_packets; int rx_bytes; int tx_packets; int tx_bytes; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;


 size_t ARRAY_SIZE (TYPE_4__*) ;
 int BIT_ULL (int ) ;
 int NL80211_STA_INFO_RX_BYTES ;
 int NL80211_STA_INFO_RX_PACKETS ;
 int NL80211_STA_INFO_SIGNAL ;
 int NL80211_STA_INFO_TX_BITRATE ;
 int NL80211_STA_INFO_TX_BYTES ;
 int NL80211_STA_INFO_TX_PACKETS ;
 int lbs_get_rssi (struct lbs_private*,int *,int *) ;
 TYPE_4__* lbs_rates ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_cfg_get_station(struct wiphy *wiphy, struct net_device *dev,
          const u8 *mac, struct station_info *sinfo)
{
 struct lbs_private *priv = wiphy_priv(wiphy);
 s8 signal, noise;
 int ret;
 size_t i;

 sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_BYTES) |
    BIT_ULL(NL80211_STA_INFO_TX_PACKETS) |
    BIT_ULL(NL80211_STA_INFO_RX_BYTES) |
    BIT_ULL(NL80211_STA_INFO_RX_PACKETS);
 sinfo->tx_bytes = priv->dev->stats.tx_bytes;
 sinfo->tx_packets = priv->dev->stats.tx_packets;
 sinfo->rx_bytes = priv->dev->stats.rx_bytes;
 sinfo->rx_packets = priv->dev->stats.rx_packets;


 ret = lbs_get_rssi(priv, &signal, &noise);
 if (ret == 0) {
  sinfo->signal = signal;
  sinfo->filled |= BIT_ULL(NL80211_STA_INFO_SIGNAL);
 }


 for (i = 0; i < ARRAY_SIZE(lbs_rates); i++) {
  if (priv->cur_rate == lbs_rates[i].hw_value) {
   sinfo->txrate.legacy = lbs_rates[i].bitrate;
   sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_BITRATE);
   break;
  }
 }

 return 0;
}

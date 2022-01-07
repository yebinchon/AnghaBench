
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct net_device {int name; } ;
struct mwifiex_user_scan_cfg {int scan_chan_gap; TYPE_3__* chan_list; int ssid_list; int num_ssids; int random_mac; } ;
struct TYPE_7__ {int wiphy; int current_bss; } ;
struct mwifiex_private {int scan_aborting; int scan_block; TYPE_4__* vs_ie; struct cfg80211_scan_request* scan_request; TYPE_5__* adapter; TYPE_2__ wdev; } ;
struct ieee_types_header {scalar_t__ len; } ;
struct ieee80211_channel {int flags; int band; int hw_value; } ;
struct cfg80211_scan_request {int flags; int ie_len; scalar_t__ ie; int n_ssids; struct ieee80211_channel** channels; int n_channels; int ssids; int mac_addr; int mac_addr_mask; TYPE_1__* wdev; } ;
struct TYPE_10__ {int scan_chan_gap_time; scalar_t__ scan_chan_gap_enabled; } ;
struct TYPE_9__ {scalar_t__ mask; int ie; } ;
struct TYPE_8__ {scalar_t__ scan_time; int scan_type; int radio_type; int chan_number; } ;
struct TYPE_6__ {struct net_device* netdev; } ;


 int CMD ;
 int EBUSY ;
 int ENOMEM ;
 int ERROR ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_CHAN_NO_IR ;
 int MWIFIEX_MAX_VSIE_LEN ;
 int MWIFIEX_MAX_VSIE_NUM ;
 int MWIFIEX_SCAN_TYPE_ACTIVE ;
 int MWIFIEX_SCAN_TYPE_PASSIVE ;
 int MWIFIEX_USER_SCAN_CHAN_MAX ;
 scalar_t__ MWIFIEX_VSIE_MASK_CLEAR ;
 scalar_t__ MWIFIEX_VSIE_MASK_SCAN ;
 int NL80211_SCAN_FLAG_RANDOM_ADDR ;
 int WARN ;
 int cfg80211_sched_scan_stopped_rtnl (int ,int ) ;
 int ether_addr_copy (int ,int *) ;
 int get_random_mask_addr (int *,int ,int ) ;
 int kfree (struct mwifiex_user_scan_cfg*) ;
 struct mwifiex_user_scan_cfg* kzalloc (int,int ) ;
 int memcpy (int *,struct ieee_types_header*,scalar_t__) ;
 int memset (int *,int ,int ) ;
 int min_t (int ,int ,int ) ;
 int mwifiex_dbg (TYPE_5__*,int ,char*,...) ;
 scalar_t__ mwifiex_is_any_intf_active (struct mwifiex_private*) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_scan_networks (struct mwifiex_private*,struct mwifiex_user_scan_cfg*) ;
 int mwifiex_stop_bg_scan (struct mwifiex_private*) ;
 int u32 ;

__attribute__((used)) static int
mwifiex_cfg80211_scan(struct wiphy *wiphy,
        struct cfg80211_scan_request *request)
{
 struct net_device *dev = request->wdev->netdev;
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 int i, offset, ret;
 struct ieee80211_channel *chan;
 struct ieee_types_header *ie;
 struct mwifiex_user_scan_cfg *user_scan_cfg;
 u8 mac_addr[ETH_ALEN];

 mwifiex_dbg(priv->adapter, CMD,
      "info: received scan request on %s\n", dev->name);




 if (priv->scan_request || priv->scan_aborting) {
  mwifiex_dbg(priv->adapter, WARN,
       "cmd: Scan already in process..\n");
  return -EBUSY;
 }

 if (!priv->wdev.current_bss && priv->scan_block)
  priv->scan_block = 0;

 if (!mwifiex_stop_bg_scan(priv))
  cfg80211_sched_scan_stopped_rtnl(priv->wdev.wiphy, 0);

 user_scan_cfg = kzalloc(sizeof(*user_scan_cfg), GFP_KERNEL);
 if (!user_scan_cfg)
  return -ENOMEM;

 priv->scan_request = request;

 if (request->flags & NL80211_SCAN_FLAG_RANDOM_ADDR) {
  get_random_mask_addr(mac_addr, request->mac_addr,
         request->mac_addr_mask);
  ether_addr_copy(request->mac_addr, mac_addr);
  ether_addr_copy(user_scan_cfg->random_mac, mac_addr);
 }

 user_scan_cfg->num_ssids = request->n_ssids;
 user_scan_cfg->ssid_list = request->ssids;

 if (request->ie && request->ie_len) {
  offset = 0;
  for (i = 0; i < MWIFIEX_MAX_VSIE_NUM; i++) {
   if (priv->vs_ie[i].mask != MWIFIEX_VSIE_MASK_CLEAR)
    continue;
   priv->vs_ie[i].mask = MWIFIEX_VSIE_MASK_SCAN;
   ie = (struct ieee_types_header *)(request->ie + offset);
   memcpy(&priv->vs_ie[i].ie, ie, sizeof(*ie) + ie->len);
   offset += sizeof(*ie) + ie->len;

   if (offset >= request->ie_len)
    break;
  }
 }

 for (i = 0; i < min_t(u32, request->n_channels,
         MWIFIEX_USER_SCAN_CHAN_MAX); i++) {
  chan = request->channels[i];
  user_scan_cfg->chan_list[i].chan_number = chan->hw_value;
  user_scan_cfg->chan_list[i].radio_type = chan->band;

  if ((chan->flags & IEEE80211_CHAN_NO_IR) || !request->n_ssids)
   user_scan_cfg->chan_list[i].scan_type =
      MWIFIEX_SCAN_TYPE_PASSIVE;
  else
   user_scan_cfg->chan_list[i].scan_type =
      MWIFIEX_SCAN_TYPE_ACTIVE;

  user_scan_cfg->chan_list[i].scan_time = 0;
 }

 if (priv->adapter->scan_chan_gap_enabled &&
     mwifiex_is_any_intf_active(priv))
  user_scan_cfg->scan_chan_gap =
           priv->adapter->scan_chan_gap_time;

 ret = mwifiex_scan_networks(priv, user_scan_cfg);
 kfree(user_scan_cfg);
 if (ret) {
  mwifiex_dbg(priv->adapter, ERROR,
       "scan failed: %d\n", ret);
  priv->scan_aborting = 0;
  priv->scan_request = ((void*)0);
  return ret;
 }

 if (request->ie && request->ie_len) {
  for (i = 0; i < MWIFIEX_MAX_VSIE_NUM; i++) {
   if (priv->vs_ie[i].mask == MWIFIEX_VSIE_MASK_SCAN) {
    priv->vs_ie[i].mask = MWIFIEX_VSIE_MASK_CLEAR;
    memset(&priv->vs_ie[i].ie, 0,
           MWIFIEX_MAX_VSIE_LEN);
   }
  }
 }
 return 0;
}

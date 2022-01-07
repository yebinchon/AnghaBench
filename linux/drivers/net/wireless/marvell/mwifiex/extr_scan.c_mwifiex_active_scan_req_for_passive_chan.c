
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct mwifiex_user_scan_chan {int dummy; } ;
struct mwifiex_user_scan_cfg {int ssid_list; int num_ssids; int random_mac; int * chan_list; } ;
struct mwifiex_private {struct mwifiex_adapter* adapter; TYPE_2__* hidden_chan; TYPE_1__* scan_request; scalar_t__ scan_aborting; } ;
struct mwifiex_adapter {int active_scan_triggered; int dev; } ;
struct TYPE_5__ {int chan_number; } ;
struct TYPE_4__ {int flags; int ssids; int n_ssids; int mac_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INFO ;
 size_t MWIFIEX_USER_SCAN_CHAN_MAX ;
 int NL80211_SCAN_FLAG_RANDOM_ADDR ;
 int dev_err (int ,char*,int) ;
 int ether_addr_copy (int ,int ) ;
 int kfree (struct mwifiex_user_scan_cfg*) ;
 struct mwifiex_user_scan_cfg* kzalloc (int,int ) ;
 int memcpy (int *,TYPE_2__*,int) ;
 int memset (TYPE_2__**,int ,int) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_scan_networks (struct mwifiex_private*,struct mwifiex_user_scan_cfg*) ;

__attribute__((used)) static int
mwifiex_active_scan_req_for_passive_chan(struct mwifiex_private *priv)
{
 int ret;
 struct mwifiex_adapter *adapter = priv->adapter;
 u8 id = 0;
 struct mwifiex_user_scan_cfg *user_scan_cfg;

 if (adapter->active_scan_triggered || !priv->scan_request ||
     priv->scan_aborting) {
  adapter->active_scan_triggered = 0;
  return 0;
 }

 if (!priv->hidden_chan[0].chan_number) {
  mwifiex_dbg(adapter, INFO, "No BSS with hidden SSID found on DFS channels\n");
  return 0;
 }
 user_scan_cfg = kzalloc(sizeof(*user_scan_cfg), GFP_KERNEL);

 if (!user_scan_cfg)
  return -ENOMEM;

 for (id = 0; id < MWIFIEX_USER_SCAN_CHAN_MAX; id++) {
  if (!priv->hidden_chan[id].chan_number)
   break;
  memcpy(&user_scan_cfg->chan_list[id],
         &priv->hidden_chan[id],
         sizeof(struct mwifiex_user_scan_chan));
 }

 adapter->active_scan_triggered = 1;
 if (priv->scan_request->flags & NL80211_SCAN_FLAG_RANDOM_ADDR)
  ether_addr_copy(user_scan_cfg->random_mac,
    priv->scan_request->mac_addr);
 user_scan_cfg->num_ssids = priv->scan_request->n_ssids;
 user_scan_cfg->ssid_list = priv->scan_request->ssids;

 ret = mwifiex_scan_networks(priv, user_scan_cfg);
 kfree(user_scan_cfg);

 memset(&priv->hidden_chan, 0, sizeof(priv->hidden_chan));

 if (ret) {
  dev_err(priv->adapter->dev, "scan failed: %d\n", ret);
  return ret;
 }

 return 0;
}

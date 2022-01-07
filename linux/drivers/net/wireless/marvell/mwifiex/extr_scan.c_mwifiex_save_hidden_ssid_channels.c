
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mwifiex_private {TYPE_2__* hidden_chan; int adapter; } ;
struct mwifiex_bssdescriptor {struct mwifiex_bssdescriptor* beacon_buf; int ssid; } ;
struct cfg80211_bss {TYPE_1__* channel; } ;
struct TYPE_4__ {scalar_t__ chan_number; int scan_type; int radio_type; } ;
struct TYPE_3__ {scalar_t__ hw_value; int band; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INFO ;
 int MWIFIEX_SCAN_TYPE_ACTIVE ;
 int MWIFIEX_USER_SCAN_CHAN_MAX ;
 int kfree (struct mwifiex_bssdescriptor*) ;
 struct mwifiex_bssdescriptor* kzalloc (int,int ) ;
 int mwifiex_dbg (int ,int ,char*) ;
 int mwifiex_fill_new_bss_desc (struct mwifiex_private*,struct cfg80211_bss*,struct mwifiex_bssdescriptor*) ;
 scalar_t__ mwifiex_is_hidden_ssid (int *) ;

__attribute__((used)) static int mwifiex_save_hidden_ssid_channels(struct mwifiex_private *priv,
          struct cfg80211_bss *bss)
{
 struct mwifiex_bssdescriptor *bss_desc;
 int ret;
 int chid;


 bss_desc = kzalloc(sizeof(*bss_desc), GFP_KERNEL);
 if (!bss_desc)
  return -ENOMEM;

 ret = mwifiex_fill_new_bss_desc(priv, bss, bss_desc);
 if (ret)
  goto done;

 if (mwifiex_is_hidden_ssid(&bss_desc->ssid)) {
  mwifiex_dbg(priv->adapter, INFO, "found hidden SSID\n");
  for (chid = 0 ; chid < MWIFIEX_USER_SCAN_CHAN_MAX; chid++) {
   if (priv->hidden_chan[chid].chan_number ==
       bss->channel->hw_value)
    break;

   if (!priv->hidden_chan[chid].chan_number) {
    priv->hidden_chan[chid].chan_number =
     bss->channel->hw_value;
    priv->hidden_chan[chid].radio_type =
     bss->channel->band;
    priv->hidden_chan[chid].scan_type =
     MWIFIEX_SCAN_TYPE_ACTIVE;
    break;
   }
  }
 }

done:



 kfree(bss_desc->beacon_buf);
 kfree(bss_desc);
 return 0;
}

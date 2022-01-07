
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct mwifiex_private {int adapter; } ;
struct ieee80211_channel {int band; int center_freq; } ;
struct host_cmd_ds_remain_on_chan {int band_cfg; int status; int duration; int channel; int action; } ;
typedef int roc_cfg ;


 int ERROR ;
 scalar_t__ HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_REMAIN_ON_CHAN ;
 int NL80211_CHAN_NO_HT ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (unsigned int) ;
 int ieee80211_frequency_to_channel (int ) ;
 int memset (struct host_cmd_ds_remain_on_chan*,int ,int) ;
 int mwifiex_chan_type_to_sec_chan_offset (int ) ;
 int mwifiex_dbg (int ,int ,char*) ;
 scalar_t__ mwifiex_send_cmd (struct mwifiex_private*,int ,scalar_t__,int ,struct host_cmd_ds_remain_on_chan*,int) ;

int
mwifiex_remain_on_chan_cfg(struct mwifiex_private *priv, u16 action,
      struct ieee80211_channel *chan,
      unsigned int duration)
{
 struct host_cmd_ds_remain_on_chan roc_cfg;
 u8 sc;

 memset(&roc_cfg, 0, sizeof(roc_cfg));
 roc_cfg.action = cpu_to_le16(action);
 if (action == HostCmd_ACT_GEN_SET) {
  roc_cfg.band_cfg = chan->band;
  sc = mwifiex_chan_type_to_sec_chan_offset(NL80211_CHAN_NO_HT);
  roc_cfg.band_cfg |= (sc << 2);

  roc_cfg.channel =
   ieee80211_frequency_to_channel(chan->center_freq);
  roc_cfg.duration = cpu_to_le32(duration);
 }
 if (mwifiex_send_cmd(priv, HostCmd_CMD_REMAIN_ON_CHAN,
        action, 0, &roc_cfg, 1)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "failed to remain on channel\n");
  return -1;
 }

 return roc_cfg.status;
}

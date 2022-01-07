
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct mac80211_hwsim_data {int tx_bytes; int tx_pkts; int wmediumd; scalar_t__ tsf_offset; struct ieee80211_channel* tmp_chan; scalar_t__ idle; struct ieee80211_channel* channel; int use_chanctx; } ;
struct TYPE_12__ {TYPE_6__* rates; TYPE_5__* vif; } ;
struct ieee80211_tx_info {int hw_queue; int flags; TYPE_4__ control; } ;
struct ieee80211_tx_control {int sta; } ;
struct ieee80211_rate {int bitrate; } ;
struct TYPE_10__ {int timestamp; } ;
struct TYPE_11__ {TYPE_2__ probe_resp; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct ieee80211_hw {int wiphy; struct mac80211_hwsim_data* priv; } ;
struct ieee80211_hdr {int addr2; int frame_control; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_9__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_1__ def; } ;
struct TYPE_14__ {int count; int idx; } ;
struct TYPE_13__ {int chanctx_conf; } ;


 int ARRAY_SIZE (TYPE_6__*) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_STAT_ACK ;
 scalar_t__ READ_ONCE (int ) ;
 int SUPPORTS_RC_TABLE ;
 scalar_t__ WARN (int,char*,int) ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le64 (scalar_t__) ;
 int hwsim_check_magic (TYPE_5__*) ;
 int hwsim_check_sta_magic (int ) ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 struct ieee80211_rate* ieee80211_get_tx_rate (struct ieee80211_hw*,struct ieee80211_tx_info*) ;
 int ieee80211_get_tx_rates (TYPE_5__*,int ,struct sk_buff*,TYPE_6__*,int ) ;
 scalar_t__ ieee80211_hw_check (struct ieee80211_hw*,int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 scalar_t__ mac80211_hwsim_get_tsf_raw () ;
 int mac80211_hwsim_monitor_ack (struct ieee80211_channel*,int ) ;
 int mac80211_hwsim_monitor_rx (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ;
 void mac80211_hwsim_tx_frame_nl (struct ieee80211_hw*,struct sk_buff*,scalar_t__) ;
 int mac80211_hwsim_tx_frame_no_nl (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int wiphy_dbg (int ,char*) ;

__attribute__((used)) static void mac80211_hwsim_tx(struct ieee80211_hw *hw,
         struct ieee80211_tx_control *control,
         struct sk_buff *skb)
{
 struct mac80211_hwsim_data *data = hw->priv;
 struct ieee80211_tx_info *txi = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (void *)skb->data;
 struct ieee80211_chanctx_conf *chanctx_conf;
 struct ieee80211_channel *channel;
 bool ack;
 u32 _portid;

 if (WARN_ON(skb->len < 10)) {

  ieee80211_free_txskb(hw, skb);
  return;
 }

 if (!data->use_chanctx) {
  channel = data->channel;
 } else if (txi->hw_queue == 4) {
  channel = data->tmp_chan;
 } else {
  chanctx_conf = rcu_dereference(txi->control.vif->chanctx_conf);
  if (chanctx_conf)
   channel = chanctx_conf->def.chan;
  else
   channel = ((void*)0);
 }

 if (WARN(!channel, "TX w/o channel - queue = %d\n", txi->hw_queue)) {
  ieee80211_free_txskb(hw, skb);
  return;
 }

 if (data->idle && !data->tmp_chan) {
  wiphy_dbg(hw->wiphy, "Trying to TX when idle - reject\n");
  ieee80211_free_txskb(hw, skb);
  return;
 }

 if (txi->control.vif)
  hwsim_check_magic(txi->control.vif);
 if (control->sta)
  hwsim_check_sta_magic(control->sta);

 if (ieee80211_hw_check(hw, SUPPORTS_RC_TABLE))
  ieee80211_get_tx_rates(txi->control.vif, control->sta, skb,
           txi->control.rates,
           ARRAY_SIZE(txi->control.rates));

 if (skb->len >= 24 + 8 &&
     ieee80211_is_probe_resp(hdr->frame_control)) {

  struct ieee80211_mgmt *mgmt;
  struct ieee80211_rate *txrate;
  u64 ts;

  mgmt = (struct ieee80211_mgmt *)skb->data;
  txrate = ieee80211_get_tx_rate(hw, txi);
  ts = mac80211_hwsim_get_tsf_raw();
  mgmt->u.probe_resp.timestamp =
   cpu_to_le64(ts + data->tsf_offset +
        24 * 8 * 10 / txrate->bitrate);
 }

 mac80211_hwsim_monitor_rx(hw, skb, channel);


 _portid = READ_ONCE(data->wmediumd);

 if (_portid)
  return mac80211_hwsim_tx_frame_nl(hw, skb, _portid);


 data->tx_pkts++;
 data->tx_bytes += skb->len;
 ack = mac80211_hwsim_tx_frame_no_nl(hw, skb, channel);

 if (ack && skb->len >= 16)
  mac80211_hwsim_monitor_ack(channel, hdr->addr2);

 ieee80211_tx_info_clear_status(txi);


 txi->control.rates[0].count = 1;
 txi->control.rates[1].idx = -1;

 if (!(txi->flags & IEEE80211_TX_CTL_NO_ACK) && ack)
  txi->flags |= IEEE80211_TX_STAT_ACK;
 ieee80211_tx_status_irqsafe(hw, skb);
}

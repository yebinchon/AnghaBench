
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mib_mac {int desired_bsstype; int desired_bssid; int desired_ssid; int listen_interval; int max_channel_time; int min_channel_time; int probe_delay; int scan_channel; int scan_type; int long_retry_time; int short_retry_time; int cwmax; int cwmin; int rts_threshold; int frag_threshold; int max_rx_lifetime; int max_tx_msdu_lifetime; } ;
struct at76_priv {TYPE_1__* hw; int udev; } ;
struct TYPE_2__ {int wiphy; } ;


 int DBG_MIB ;
 int GFP_KERNEL ;
 int IW_ESSID_MAX_SIZE ;
 int MIB_MAC ;
 int at76_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int at76_get_mib (int ,int ,struct mib_mac*,int) ;
 int kfree (struct mib_mac*) ;
 struct mib_mac* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int wiphy_err (int ,char*,int) ;
 int wiphy_name (int ) ;

__attribute__((used)) static void at76_dump_mib_mac(struct at76_priv *priv)
{
 int ret;
 struct mib_mac *m = kmalloc(sizeof(struct mib_mac), GFP_KERNEL);

 if (!m)
  return;

 ret = at76_get_mib(priv->udev, MIB_MAC, m, sizeof(struct mib_mac));
 if (ret < 0) {
  wiphy_err(priv->hw->wiphy,
     "at76_get_mib (MAC) failed: %d\n", ret);
  goto exit;
 }

 at76_dbg(DBG_MIB, "%s: MIB MAC: max_tx_msdu_lifetime %d "
   "max_rx_lifetime %d frag_threshold %d rts_threshold %d "
   "cwmin %d cwmax %d short_retry_time %d long_retry_time %d "
   "scan_type %d scan_channel %d probe_delay %u "
   "min_channel_time %d max_channel_time %d listen_int %d "
   "desired_ssid %*phD desired_bssid %pM desired_bsstype %d",
   wiphy_name(priv->hw->wiphy),
   le32_to_cpu(m->max_tx_msdu_lifetime),
   le32_to_cpu(m->max_rx_lifetime),
   le16_to_cpu(m->frag_threshold), le16_to_cpu(m->rts_threshold),
   le16_to_cpu(m->cwmin), le16_to_cpu(m->cwmax),
   m->short_retry_time, m->long_retry_time, m->scan_type,
   m->scan_channel, le16_to_cpu(m->probe_delay),
   le16_to_cpu(m->min_channel_time),
   le16_to_cpu(m->max_channel_time),
   le16_to_cpu(m->listen_interval),
   IW_ESSID_MAX_SIZE, m->desired_ssid,
   m->desired_bssid, m->desired_bsstype);
exit:
 kfree(m);
}

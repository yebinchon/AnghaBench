
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int beacon_interval; int dtim_period; int flags; } ;
struct TYPE_12__ {int legacy; } ;
struct station_info {int filled; TYPE_3__ bss_param; TYPE_6__ rxrate; TYPE_6__ txrate; int signal; int tx_packets; int rx_packets; int tx_bytes; int rx_bytes; int signal_avg; int tx_failed; int inactive_time; } ;
struct TYPE_7__ {int last_tx_rate; int last_tx_htinfo; int tx_failed; int tx_packets; int rx_packets; int tx_bytes; int rx_bytes; int rssi; scalar_t__ last_rx; } ;
struct mwifiex_sta_node {TYPE_1__ stats; } ;
struct TYPE_10__ {int cap_info_bitmap; int beacon_period; } ;
struct TYPE_11__ {TYPE_4__ bss_descriptor; } ;
struct TYPE_8__ {int tx_packets; int rx_packets; int tx_bytes; int rx_bytes; } ;
struct mwifiex_private {scalar_t__ bss_mode; TYPE_5__ curr_bss_params; int dtim_period; int rxpd_htinfo; int rxpd_rate; int bcn_rssi_avg; TYPE_2__ stats; int tx_htinfo; int tx_rate; int adapter; } ;


 int BIT (int ) ;
 int BIT_ULL (int ) ;
 int BSS_PARAM_FLAGS_SHORT_PREAMBLE ;
 int BSS_PARAM_FLAGS_SHORT_SLOT_TIME ;
 int DTIM_PERIOD_I ;
 int EFAULT ;
 int ENOENT ;
 int ERROR ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 int HostCmd_ACT_GEN_GET ;
 int HostCmd_CMD_802_11_SNMP_MIB ;
 int HostCmd_CMD_RSSI_INFO ;
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int NL80211_STA_INFO_BSS_PARAM ;
 int NL80211_STA_INFO_INACTIVE_TIME ;
 int NL80211_STA_INFO_RX_BITRATE ;
 int NL80211_STA_INFO_RX_BYTES ;
 int NL80211_STA_INFO_RX_PACKETS ;
 int NL80211_STA_INFO_SIGNAL ;
 int NL80211_STA_INFO_SIGNAL_AVG ;
 int NL80211_STA_INFO_TX_BITRATE ;
 int NL80211_STA_INFO_TX_BYTES ;
 int NL80211_STA_INFO_TX_FAILED ;
 int NL80211_STA_INFO_TX_PACKETS ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int WLAN_CAPABILITY_SHORT_SLOT_TIME ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int mwifiex_dbg (int ,int ,char*) ;
 scalar_t__ mwifiex_drv_get_data_rate (struct mwifiex_private*,int*) ;
 int mwifiex_parse_htinfo (struct mwifiex_private*,int ,int ,TYPE_6__*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int
mwifiex_dump_station_info(struct mwifiex_private *priv,
     struct mwifiex_sta_node *node,
     struct station_info *sinfo)
{
 u32 rate;

 sinfo->filled = BIT_ULL(NL80211_STA_INFO_RX_BYTES) | BIT_ULL(NL80211_STA_INFO_TX_BYTES) |
   BIT_ULL(NL80211_STA_INFO_RX_PACKETS) | BIT_ULL(NL80211_STA_INFO_TX_PACKETS) |
   BIT_ULL(NL80211_STA_INFO_TX_BITRATE) |
   BIT_ULL(NL80211_STA_INFO_SIGNAL) | BIT_ULL(NL80211_STA_INFO_SIGNAL_AVG);

 if (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_UAP) {
  if (!node)
   return -ENOENT;

  sinfo->filled |= BIT_ULL(NL80211_STA_INFO_INACTIVE_TIME) |
    BIT_ULL(NL80211_STA_INFO_TX_FAILED);
  sinfo->inactive_time =
   jiffies_to_msecs(jiffies - node->stats.last_rx);

  sinfo->signal = node->stats.rssi;
  sinfo->signal_avg = node->stats.rssi;
  sinfo->rx_bytes = node->stats.rx_bytes;
  sinfo->tx_bytes = node->stats.tx_bytes;
  sinfo->rx_packets = node->stats.rx_packets;
  sinfo->tx_packets = node->stats.tx_packets;
  sinfo->tx_failed = node->stats.tx_failed;

  mwifiex_parse_htinfo(priv, priv->tx_rate,
         node->stats.last_tx_htinfo,
         &sinfo->txrate);
  sinfo->txrate.legacy = node->stats.last_tx_rate * 5;

  return 0;
 }


 if (mwifiex_send_cmd(priv, HostCmd_CMD_RSSI_INFO,
        HostCmd_ACT_GEN_GET, 0, ((void*)0), 1)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "failed to get signal information\n");
  return -EFAULT;
 }

 if (mwifiex_drv_get_data_rate(priv, &rate)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "getting data rate error\n");
  return -EFAULT;
 }


 mwifiex_send_cmd(priv, HostCmd_CMD_802_11_SNMP_MIB,
    HostCmd_ACT_GEN_GET, DTIM_PERIOD_I,
    &priv->dtim_period, 1);

 mwifiex_parse_htinfo(priv, priv->tx_rate, priv->tx_htinfo,
        &sinfo->txrate);

 sinfo->signal_avg = priv->bcn_rssi_avg;
 sinfo->rx_bytes = priv->stats.rx_bytes;
 sinfo->tx_bytes = priv->stats.tx_bytes;
 sinfo->rx_packets = priv->stats.rx_packets;
 sinfo->tx_packets = priv->stats.tx_packets;
 sinfo->signal = priv->bcn_rssi_avg;

 sinfo->txrate.legacy = rate * 5;

 sinfo->filled |= BIT(NL80211_STA_INFO_RX_BITRATE);
 mwifiex_parse_htinfo(priv, priv->rxpd_rate, priv->rxpd_htinfo,
        &sinfo->rxrate);

 if (priv->bss_mode == NL80211_IFTYPE_STATION) {
  sinfo->filled |= BIT_ULL(NL80211_STA_INFO_BSS_PARAM);
  sinfo->bss_param.flags = 0;
  if (priv->curr_bss_params.bss_descriptor.cap_info_bitmap &
      WLAN_CAPABILITY_SHORT_PREAMBLE)
   sinfo->bss_param.flags |=
     BSS_PARAM_FLAGS_SHORT_PREAMBLE;
  if (priv->curr_bss_params.bss_descriptor.cap_info_bitmap &
      WLAN_CAPABILITY_SHORT_SLOT_TIME)
   sinfo->bss_param.flags |=
     BSS_PARAM_FLAGS_SHORT_SLOT_TIME;
  sinfo->bss_param.dtim_period = priv->dtim_period;
  sinfo->bss_param.beacon_interval =
   priv->curr_bss_params.bss_descriptor.beacon_period;
 }

 return 0;
}

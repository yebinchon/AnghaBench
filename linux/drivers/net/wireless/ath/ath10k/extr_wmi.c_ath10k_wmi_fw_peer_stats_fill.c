
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_fw_stats_peer {int rx_duration; int peer_rx_rate; int peer_tx_rate; int peer_rssi; int peer_macaddr; } ;


 int ATH10K_FW_STATS_BUF_SIZE ;
 int scnprintf (char*,int,char*,...) ;

__attribute__((used)) static void
ath10k_wmi_fw_peer_stats_fill(const struct ath10k_fw_stats_peer *peer,
         char *buf, u32 *length, bool extended_peer)
{
 u32 len = *length;
 u32 buf_len = ATH10K_FW_STATS_BUF_SIZE;

 len += scnprintf(buf + len, buf_len - len, "%30s %pM\n",
   "Peer MAC address", peer->peer_macaddr);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
   "Peer RSSI", peer->peer_rssi);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
   "Peer TX rate", peer->peer_tx_rate);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
   "Peer RX rate", peer->peer_rx_rate);
 if (!extended_peer)
  len += scnprintf(buf + len, buf_len - len, "%30s %llu\n",
    "Peer RX duration", peer->rx_duration);

 len += scnprintf(buf + len, buf_len - len, "\n");
 *length = len;
}

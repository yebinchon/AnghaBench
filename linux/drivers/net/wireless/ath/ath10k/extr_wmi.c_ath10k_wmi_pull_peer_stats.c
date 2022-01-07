
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct wmi_peer_stats {int peer_tx_rate; int peer_rssi; TYPE_1__ peer_macaddr; } ;
struct ath10k_fw_stats_peer {void* peer_tx_rate; void* peer_rssi; int peer_macaddr; } ;


 void* __le32_to_cpu (int ) ;
 int ether_addr_copy (int ,int ) ;

void ath10k_wmi_pull_peer_stats(const struct wmi_peer_stats *src,
    struct ath10k_fw_stats_peer *dst)
{
 ether_addr_copy(dst->peer_macaddr, src->peer_macaddr.addr);
 dst->peer_rssi = __le32_to_cpu(src->peer_rssi);
 dst->peer_tx_rate = __le32_to_cpu(src->peer_tx_rate);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rx_packet {int dummy; } ;
struct iwl_notif_wait_data {int dummy; } ;
struct iwl_mvm_sniffer_apply {int bssid; TYPE_1__* mvm; int aid; } ;
struct TYPE_2__ {int cur_bssid; int cur_aid; } ;


 int cpu_to_le16 (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static bool iwl_mvm_sniffer_apply(struct iwl_notif_wait_data *notif_data,
      struct iwl_rx_packet *pkt, void *data)
{
 struct iwl_mvm_sniffer_apply *apply = data;

 apply->mvm->cur_aid = cpu_to_le16(apply->aid);
 memcpy(apply->mvm->cur_bssid, apply->bssid,
        sizeof(apply->mvm->cur_bssid));

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct cfg80211_ftm_responder_stats {int total_duration_ms; int out_of_window_triggers_num; int reschedule_requests_num; int unknown_triggers_num; int non_asap_num; int asap_num; int failed_num; int partial_num; int success_num; } ;
struct iwl_mvm {struct cfg80211_ftm_responder_stats ftm_resp_stats; } ;
struct iwl_ftm_responder_stats {int success_ftm; int ftm_per_burst; int duration; int flags; } ;


 int FTM_RESP_STAT_ASAP_REQ ;
 int FTM_RESP_STAT_ASAP_RESP ;
 int FTM_RESP_STAT_DUP ;
 int FTM_RESP_STAT_NON_ASAP_OUT_WIN ;
 int FTM_RESP_STAT_NON_ASAP_RESP ;
 int FTM_RESP_STAT_TRIGGER_UNKNOWN ;
 int USEC_PER_MSEC ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_ftm_responder_stats(struct iwl_mvm *mvm,
     struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_ftm_responder_stats *resp = (void *)pkt->data;
 struct cfg80211_ftm_responder_stats *stats = &mvm->ftm_resp_stats;
 u32 flags = le32_to_cpu(resp->flags);

 if (resp->success_ftm == resp->ftm_per_burst)
  stats->success_num++;
 else if (resp->success_ftm >= 2)
  stats->partial_num++;
 else
  stats->failed_num++;

 if ((flags & FTM_RESP_STAT_ASAP_REQ) &&
     (flags & FTM_RESP_STAT_ASAP_RESP))
  stats->asap_num++;

 if (flags & FTM_RESP_STAT_NON_ASAP_RESP)
  stats->non_asap_num++;

 stats->total_duration_ms += le32_to_cpu(resp->duration) / USEC_PER_MSEC;

 if (flags & FTM_RESP_STAT_TRIGGER_UNKNOWN)
  stats->unknown_triggers_num++;

 if (flags & FTM_RESP_STAT_DUP)
  stats->reschedule_requests_num++;

 if (flags & FTM_RESP_STAT_NON_ASAP_OUT_WIN)
  stats->out_of_window_triggers_num++;
}

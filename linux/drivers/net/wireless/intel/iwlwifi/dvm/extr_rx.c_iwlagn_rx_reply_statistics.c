
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int max_delta_stats; int delta_stats; int accum_stats; } ;
struct iwl_notif_statistics {int flag; } ;


 int IWL_DEBUG_RX (struct iwl_priv*,char*) ;
 int UCODE_STATISTICS_CLEAR_MSK ;
 int iwlagn_rx_statistics (struct iwl_priv*,struct iwl_rx_cmd_buffer*) ;
 int le32_to_cpu (int ) ;
 int memset (int *,int ,int) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static void iwlagn_rx_reply_statistics(struct iwl_priv *priv,
           struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_notif_statistics *stats = (void *)pkt->data;

 if (le32_to_cpu(stats->flag) & UCODE_STATISTICS_CLEAR_MSK) {
  IWL_DEBUG_RX(priv, "Statistics have been cleared\n");
 }

 iwlagn_rx_statistics(priv, rxb);
}

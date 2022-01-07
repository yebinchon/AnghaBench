
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scanstart_notification {int beacon_timer; int status; int tsf_low; int tsf_high; scalar_t__ band; int channel; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int scan_start_tsf; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*,int ,char*,int ,int ,int ,int ) ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static void iwl_rx_scan_start_notif(struct iwl_priv *priv,
        struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_scanstart_notification *notif = (void *)pkt->data;

 priv->scan_start_tsf = le32_to_cpu(notif->tsf_low);
 IWL_DEBUG_SCAN(priv, "Scan start: "
         "%d [802.11%s] "
         "(TSF: 0x%08X:%08X) - %d (beacon timer %u)\n",
         notif->channel,
         notif->band ? "bg" : "a",
         le32_to_cpu(notif->tsf_high),
         le32_to_cpu(notif->tsf_low),
         notif->status, notif->beacon_timer);
}

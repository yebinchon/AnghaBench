
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scanresults_notification {int tsf_low; int * statistics; int tsf_high; int num_probe_not_sent; int probe_status; scalar_t__ band; int channel; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ scan_start_tsf; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*,int ,char*,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static void iwl_rx_scan_results_notif(struct iwl_priv *priv,
          struct iwl_rx_cmd_buffer *rxb)
{
}

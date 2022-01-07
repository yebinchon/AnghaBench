
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_spectrum_notification {int state; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int measurement_status; int measure_report; } ;


 int IWL_DEBUG_11H (struct iwl_priv*,char*) ;
 int MEASUREMENT_READY ;
 int memcpy (int *,struct iwl_spectrum_notification*,int) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static void iwlagn_rx_spectrum_measure_notif(struct iwl_priv *priv,
          struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_spectrum_notification *report = (void *)pkt->data;

 if (!report->state) {
  IWL_DEBUG_11H(priv,
   "Spectrum Measure Notification: Start\n");
  return;
 }

 memcpy(&priv->measure_report, report, sizeof(*report));
 priv->measurement_status |= MEASUREMENT_READY;
}

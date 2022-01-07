
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmd; } ;
struct iwl_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;
struct iwl_priv {int dummy; } ;
struct iwl_notif_wait_data {int dummy; } ;
struct iwl_calib_hdr {int op_code; } ;


 scalar_t__ CALIBRATION_COMPLETE_NOTIFICATION ;
 scalar_t__ CALIBRATION_RES_NOTIFICATION ;
 int IWL_ERR (struct iwl_priv*,char*,int ) ;
 int WARN_ON (int) ;
 scalar_t__ iwl_calib_set (struct iwl_priv*,struct iwl_calib_hdr*,int ) ;
 int iwl_rx_packet_payload_len (struct iwl_rx_packet*) ;

__attribute__((used)) static bool iwlagn_wait_calib(struct iwl_notif_wait_data *notif_wait,
         struct iwl_rx_packet *pkt, void *data)
{
 struct iwl_priv *priv = data;
 struct iwl_calib_hdr *hdr;

 if (pkt->hdr.cmd != CALIBRATION_RES_NOTIFICATION) {
  WARN_ON(pkt->hdr.cmd != CALIBRATION_COMPLETE_NOTIFICATION);
  return 1;
 }

 hdr = (struct iwl_calib_hdr *)pkt->data;

 if (iwl_calib_set(priv, hdr, iwl_rx_packet_payload_len(pkt)))
  IWL_ERR(priv, "Failed to record calibration data %d\n",
   hdr->op_code);

 return 0;
}

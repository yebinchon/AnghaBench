
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {int failure_frame; int rate_n_flags; TYPE_1__ status; } ;
struct iwlagn_beacon_notif {int ibss_mgr_status; int low_tsf; int high_tsf; TYPE_2__ beacon_notify_hdr; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int ibss_manager; } ;


 int IWL_DEBUG_RX (struct iwl_priv*,char*,int,int ,int ,int ,int ,int ) ;
 int TX_STATUS_MSK ;
 int iwl_hw_get_rate (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static void iwlagn_rx_beacon_notif(struct iwl_priv *priv,
       struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwlagn_beacon_notif *beacon = (void *)pkt->data;
 priv->ibss_manager = le32_to_cpu(beacon->ibss_mgr_status);
}

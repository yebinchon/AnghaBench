
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_mfuart_load_notif {int image_size; int duration; int status; int external_ver; int installed_ver; } ;


 int IWL_DEBUG_INFO (struct iwl_mvm*,char*,int ,...) ;
 int iwl_rx_packet_payload_len (struct iwl_rx_packet*) ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_mfuart_notif(struct iwl_mvm *mvm,
        struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_mfuart_load_notif *mfuart_notif = (void *)pkt->data;

 IWL_DEBUG_INFO(mvm,
         "MFUART: installed ver: 0x%08x, external ver: 0x%08x, status: 0x%08x, duration: 0x%08x\n",
         le32_to_cpu(mfuart_notif->installed_ver),
         le32_to_cpu(mfuart_notif->external_ver),
         le32_to_cpu(mfuart_notif->status),
         le32_to_cpu(mfuart_notif->duration));

 if (iwl_rx_packet_payload_len(pkt) == sizeof(*mfuart_notif))
  IWL_DEBUG_INFO(mvm,
          "MFUART: image size: 0x%08x\n",
          le32_to_cpu(mfuart_notif->image_size));
}

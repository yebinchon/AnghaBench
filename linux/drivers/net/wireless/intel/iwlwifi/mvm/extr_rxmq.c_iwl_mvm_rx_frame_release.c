
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_frame_release {int nssn; int baid; } ;


 int iwl_mvm_release_frames_from_notif (struct iwl_mvm*,struct napi_struct*,int ,int ,int,int ) ;
 int le16_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_frame_release(struct iwl_mvm *mvm, struct napi_struct *napi,
         struct iwl_rx_cmd_buffer *rxb, int queue)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_frame_release *release = (void *)pkt->data;

 iwl_mvm_release_frames_from_notif(mvm, napi, release->baid,
       le16_to_cpu(release->nssn),
       queue, 0);
}

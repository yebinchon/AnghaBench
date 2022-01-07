
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {TYPE_1__* ops; int error; } ;
struct venus_core {int dummy; } ;
struct hfi_msg_event_release_buffer_ref_pkt {int output_tag; int extradata_buffer; int packet_buffer; } ;
struct hfi_msg_event_notify_pkt {scalar_t__ ext_event_data; } ;
struct hfi_event_data {int tag; int extradata_buffer; int packet_buffer; int event_type; int member_0; } ;
struct TYPE_2__ {int (* event_notify ) (struct venus_inst*,int ,struct hfi_event_data*) ;} ;


 int EVT_SYS_EVENT_CHANGE ;
 int HFI_ERR_NONE ;
 int HFI_EVENT_RELEASE_BUFFER_REFERENCE ;
 int stub1 (struct venus_inst*,int ,struct hfi_event_data*) ;

__attribute__((used)) static void event_release_buffer_ref(struct venus_core *core,
         struct venus_inst *inst,
         struct hfi_msg_event_notify_pkt *pkt)
{
 struct hfi_event_data event = {0};
 struct hfi_msg_event_release_buffer_ref_pkt *data;

 data = (struct hfi_msg_event_release_buffer_ref_pkt *)
  pkt->ext_event_data;

 event.event_type = HFI_EVENT_RELEASE_BUFFER_REFERENCE;
 event.packet_buffer = data->packet_buffer;
 event.extradata_buffer = data->extradata_buffer;
 event.tag = data->output_tag;

 inst->error = HFI_ERR_NONE;
 inst->ops->event_notify(inst, EVT_SYS_EVENT_CHANGE, &event);
}

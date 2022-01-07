
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;
struct venus_core {int dummy; } ;
struct hfi_msg_event_notify_pkt {int event_id; } ;


 int EVT_SYS_ERROR ;





 int event_release_buffer_ref (struct venus_core*,struct venus_inst*,struct hfi_msg_event_notify_pkt*) ;
 int event_seq_changed (struct venus_core*,struct venus_inst*,struct hfi_msg_event_notify_pkt*) ;
 int event_session_error (struct venus_core*,struct venus_inst*,struct hfi_msg_event_notify_pkt*) ;
 int event_sys_error (struct venus_core*,int ,struct hfi_msg_event_notify_pkt*) ;

__attribute__((used)) static void hfi_event_notify(struct venus_core *core, struct venus_inst *inst,
        void *packet)
{
 struct hfi_msg_event_notify_pkt *pkt = packet;

 if (!packet)
  return;

 switch (pkt->event_id) {
 case 128:
  event_sys_error(core, EVT_SYS_ERROR, pkt);
  break;
 case 131:
  event_session_error(core, inst, pkt);
  break;
 case 129:
  event_seq_changed(core, inst, pkt);
  break;
 case 132:
  event_release_buffer_ref(core, inst, pkt);
  break;
 case 130:
  break;
 default:
  break;
 }
}

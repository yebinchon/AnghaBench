
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int done; int error; } ;
struct venus_core {int dummy; } ;
struct hfi_msg_session_end_done_pkt {int error_type; } ;


 int complete (int *) ;

__attribute__((used)) static void hfi_session_end_done(struct venus_core *core,
     struct venus_inst *inst, void *packet)
{
 struct hfi_msg_session_end_done_pkt *pkt = packet;

 inst->error = pkt->error_type;
 complete(&inst->done);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {TYPE_1__* ops; int error; } ;
struct venus_core {int dummy; } ;
struct hfi_msg_session_empty_buffer_done_pkt {int offset; int filled_len; int input_tag; int error_type; } ;
struct TYPE_2__ {int (* buf_done ) (struct venus_inst*,int ,int ,int ,int ,int ,int ,int ) ;} ;


 int HFI_BUFFER_INPUT ;
 int stub1 (struct venus_inst*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void hfi_session_etb_done(struct venus_core *core,
     struct venus_inst *inst, void *packet)
{
 struct hfi_msg_session_empty_buffer_done_pkt *pkt = packet;

 inst->error = pkt->error_type;
 inst->ops->buf_done(inst, HFI_BUFFER_INPUT, pkt->input_tag,
       pkt->filled_len, pkt->offset, 0, 0, 0);
}

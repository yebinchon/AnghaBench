
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct venus_inst {int done; scalar_t__ error; } ;
struct venus_core {int dummy; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {TYPE_2__ hdr; } ;
struct hfi_msg_session_init_done_pkt {scalar_t__ error_type; int data; TYPE_1__ shdr; } ;


 scalar_t__ HFI_ERR_NONE ;
 scalar_t__ HFI_ERR_SESSION_INSUFFICIENT_RESOURCES ;
 int IS_V1 (struct venus_core*) ;
 int complete (int *) ;
 scalar_t__ hfi_parser (struct venus_core*,struct venus_inst*,int ,int) ;

__attribute__((used)) static void hfi_session_init_done(struct venus_core *core,
      struct venus_inst *inst, void *packet)
{
 struct hfi_msg_session_init_done_pkt *pkt = packet;
 int rem_bytes;
 u32 error;

 error = pkt->error_type;
 if (error != HFI_ERR_NONE)
  goto done;

 if (!IS_V1(core))
  goto done;

 rem_bytes = pkt->shdr.hdr.size - sizeof(*pkt) + sizeof(u32);
 if (rem_bytes <= 0) {
  error = HFI_ERR_SESSION_INSUFFICIENT_RESOURCES;
  goto done;
 }

 error = hfi_parser(core, inst, pkt->data, rem_bytes);
done:
 inst->error = error;
 complete(&inst->done);
}

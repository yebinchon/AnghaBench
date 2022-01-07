
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct venus_inst {int dummy; } ;
struct venus_core {int done; scalar_t__ error; } ;
struct TYPE_2__ {int size; } ;
struct hfi_msg_sys_init_done_pkt {scalar_t__ error_type; int data; TYPE_1__ hdr; int num_properties; } ;


 scalar_t__ HFI_ERR_NONE ;
 scalar_t__ HFI_ERR_SYS_INSUFFICIENT_RESOURCES ;
 scalar_t__ HFI_ERR_SYS_INVALID_PARAMETER ;
 int complete (int *) ;
 scalar_t__ hfi_parser (struct venus_core*,struct venus_inst*,int ,int) ;

__attribute__((used)) static void hfi_sys_init_done(struct venus_core *core, struct venus_inst *inst,
         void *packet)
{
 struct hfi_msg_sys_init_done_pkt *pkt = packet;
 int rem_bytes;
 u32 error;

 error = pkt->error_type;
 if (error != HFI_ERR_NONE)
  goto done;

 if (!pkt->num_properties) {
  error = HFI_ERR_SYS_INVALID_PARAMETER;
  goto done;
 }

 rem_bytes = pkt->hdr.size - sizeof(*pkt) + sizeof(u32);
 if (rem_bytes <= 0) {

  error = HFI_ERR_SYS_INSUFFICIENT_RESOURCES;
  goto done;
 }

 error = hfi_parser(core, inst, pkt->data, rem_bytes);

done:
 core->error = error;
 complete(&core->done);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;
struct venus_core {int done; int error; } ;
struct hfi_msg_sys_ping_ack_pkt {int client_data; } ;


 int HFI_ERR_NONE ;
 int HFI_ERR_SYS_FATAL ;
 int complete (int *) ;

__attribute__((used)) static void hfi_sys_ping_done(struct venus_core *core, struct venus_inst *inst,
         void *packet)
{
 struct hfi_msg_sys_ping_ack_pkt *pkt = packet;

 core->error = HFI_ERR_NONE;

 if (pkt->client_data != 0xbeef)
  core->error = HFI_ERR_SYS_FATAL;

 complete(&core->done);
}

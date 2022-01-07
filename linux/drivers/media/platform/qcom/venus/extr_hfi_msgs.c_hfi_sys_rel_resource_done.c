
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;
struct venus_core {int done; int error; } ;
struct hfi_msg_sys_release_resource_done_pkt {int error_type; } ;


 int complete (int *) ;

__attribute__((used)) static void hfi_sys_rel_resource_done(struct venus_core *core,
          struct venus_inst *inst,
          void *packet)
{
 struct hfi_msg_sys_release_resource_done_pkt *pkt = packet;

 core->error = pkt->error_type;
 complete(&core->done);
}

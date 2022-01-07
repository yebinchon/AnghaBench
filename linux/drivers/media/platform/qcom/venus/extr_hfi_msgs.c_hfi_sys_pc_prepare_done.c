
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;
struct venus_core {int dev; } ;
struct hfi_msg_sys_pc_prep_done_pkt {int error_type; } ;


 int dev_dbg (int ,char*,int ) ;

__attribute__((used)) static void hfi_sys_pc_prepare_done(struct venus_core *core,
        struct venus_inst *inst, void *packet)
{
 struct hfi_msg_sys_pc_prep_done_pkt *pkt = packet;

 dev_dbg(core->dev, "pc prepare done (error %x)\n", pkt->error_type);
}

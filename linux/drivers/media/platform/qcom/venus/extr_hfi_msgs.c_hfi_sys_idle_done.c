
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;
struct venus_core {int dev; } ;


 int dev_dbg (int ,char*) ;

__attribute__((used)) static void hfi_sys_idle_done(struct venus_core *core, struct venus_inst *inst,
         void *packet)
{
 dev_dbg(core->dev, "sys idle\n");
}

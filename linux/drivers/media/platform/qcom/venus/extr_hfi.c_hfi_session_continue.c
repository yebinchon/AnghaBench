
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venus_inst {struct venus_core* core; } ;
struct venus_core {TYPE_2__* ops; TYPE_1__* res; } ;
struct TYPE_4__ {int (* session_continue ) (struct venus_inst*) ;} ;
struct TYPE_3__ {scalar_t__ hfi_version; } ;


 scalar_t__ HFI_VERSION_1XX ;
 int stub1 (struct venus_inst*) ;

int hfi_session_continue(struct venus_inst *inst)
{
 struct venus_core *core = inst->core;

 if (core->res->hfi_version == HFI_VERSION_1XX)
  return 0;

 return core->ops->session_continue(inst);
}

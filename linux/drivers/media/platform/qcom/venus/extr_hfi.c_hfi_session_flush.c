
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct venus_inst {int done; TYPE_1__* core; } ;
struct hfi_ops {int (* session_flush ) (struct venus_inst*,int ) ;} ;
struct TYPE_2__ {struct hfi_ops* ops; } ;


 int reinit_completion (int *) ;
 int stub1 (struct venus_inst*,int ) ;
 int wait_session_msg (struct venus_inst*) ;

int hfi_session_flush(struct venus_inst *inst, u32 type)
{
 const struct hfi_ops *ops = inst->core->ops;
 int ret;

 reinit_completion(&inst->done);

 ret = ops->session_flush(inst, type);
 if (ret)
  return ret;

 ret = wait_session_msg(inst);
 if (ret)
  return ret;

 return 0;
}

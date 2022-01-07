
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {scalar_t__ state; int hfi_codec; int session_type; int done; struct venus_core* core; } ;
struct venus_core {struct hfi_ops* ops; } ;
struct hfi_ops {int (* session_init ) (struct venus_inst*,int ,int ) ;} ;


 int EINVAL ;
 scalar_t__ INST_INIT ;
 scalar_t__ INST_UNINIT ;
 int reinit_completion (int *) ;
 int stub1 (struct venus_inst*,int ,int ) ;
 int to_codec_type (int ) ;
 int wait_session_msg (struct venus_inst*) ;

int hfi_session_init(struct venus_inst *inst, u32 pixfmt)
{
 struct venus_core *core = inst->core;
 const struct hfi_ops *ops = core->ops;
 int ret;

 if (inst->state != INST_UNINIT)
  return -EINVAL;

 inst->hfi_codec = to_codec_type(pixfmt);
 reinit_completion(&inst->done);

 ret = ops->session_init(inst, inst->session_type, inst->hfi_codec);
 if (ret)
  return ret;

 ret = wait_session_msg(inst);
 if (ret)
  return ret;

 inst->state = INST_INIT;

 return 0;
}

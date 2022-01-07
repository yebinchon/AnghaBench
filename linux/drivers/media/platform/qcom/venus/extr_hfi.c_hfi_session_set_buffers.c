
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {TYPE_1__* core; } ;
struct hfi_ops {int (* session_set_buffers ) (struct venus_inst*,struct hfi_buffer_desc*) ;} ;
struct hfi_buffer_desc {int dummy; } ;
struct TYPE_2__ {struct hfi_ops* ops; } ;


 int stub1 (struct venus_inst*,struct hfi_buffer_desc*) ;

int hfi_session_set_buffers(struct venus_inst *inst, struct hfi_buffer_desc *bd)
{
 const struct hfi_ops *ops = inst->core->ops;

 return ops->session_set_buffers(inst, bd);
}

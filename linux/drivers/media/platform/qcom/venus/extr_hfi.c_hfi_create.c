
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_core {TYPE_1__* res; int done; int state; struct hfi_core_ops const* core_ops; int insts_count; } ;
struct hfi_core_ops {int dummy; } ;
struct TYPE_2__ {int hfi_version; } ;


 int CORE_UNINIT ;
 int EINVAL ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 int pkt_set_version (int ) ;
 int venus_hfi_create (struct venus_core*) ;

int hfi_create(struct venus_core *core, const struct hfi_core_ops *ops)
{
 int ret;

 if (!ops)
  return -EINVAL;

 atomic_set(&core->insts_count, 0);
 core->core_ops = ops;
 core->state = CORE_UNINIT;
 init_completion(&core->done);
 pkt_set_version(core->res->hfi_version);
 ret = venus_hfi_create(core);

 return ret;
}

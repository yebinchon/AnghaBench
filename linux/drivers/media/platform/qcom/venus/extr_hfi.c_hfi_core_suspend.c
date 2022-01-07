
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_core {scalar_t__ state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* suspend ) (struct venus_core*) ;} ;


 scalar_t__ CORE_INIT ;
 int stub1 (struct venus_core*) ;

int hfi_core_suspend(struct venus_core *core)
{
 if (core->state != CORE_INIT)
  return 0;

 return core->ops->suspend(core);
}

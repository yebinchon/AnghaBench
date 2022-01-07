
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct venus_core {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* core_trigger_ssr ) (struct venus_core*,int ) ;} ;


 int stub1 (struct venus_core*,int ) ;

int hfi_core_trigger_ssr(struct venus_core *core, u32 type)
{
 return core->ops->core_trigger_ssr(core, type);
}

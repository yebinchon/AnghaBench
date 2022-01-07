
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* teardown_partitions ) () ;} ;


 int kfree (int ) ;
 int stub1 () ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_partitions ;

__attribute__((used)) static void
xpc_teardown_partitions(void)
{
 xpc_arch_ops.teardown_partitions();
 kfree(xpc_partitions);
}

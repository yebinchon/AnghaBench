
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* heartbeat_exit ) () ;} ;


 int del_timer_sync (int *) ;
 int stub1 () ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_hb_timer ;

__attribute__((used)) static void
xpc_stop_hb_beater(void)
{
 del_timer_sync(&xpc_hb_timer);
 xpc_arch_ops.heartbeat_exit();
}

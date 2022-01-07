
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* heartbeat_init ) () ;} ;


 int stub1 () ;
 int timer_setup (int *,int (*) (int ),int ) ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_hb_beater (int ) ;
 int xpc_hb_timer ;

__attribute__((used)) static void
xpc_start_hb_beater(void)
{
 xpc_arch_ops.heartbeat_init();
 timer_setup(&xpc_hb_timer, xpc_hb_beater, 0);
 xpc_hb_beater(0);
}

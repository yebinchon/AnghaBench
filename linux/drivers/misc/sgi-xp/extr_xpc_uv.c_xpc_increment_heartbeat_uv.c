
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;


 TYPE_1__* xpc_heartbeat_uv ;

__attribute__((used)) static void
xpc_increment_heartbeat_uv(void)
{
 xpc_heartbeat_uv->value++;
}

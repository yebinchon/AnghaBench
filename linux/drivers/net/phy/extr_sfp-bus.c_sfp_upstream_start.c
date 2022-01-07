
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfp_bus {int started; int sfp; TYPE_1__* socket_ops; scalar_t__ registered; } ;
struct TYPE_2__ {int (* start ) (int ) ;} ;


 int stub1 (int ) ;

void sfp_upstream_start(struct sfp_bus *bus)
{
 if (bus->registered)
  bus->socket_ops->start(bus->sfp);
 bus->started = 1;
}

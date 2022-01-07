
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfp_bus {int started; int sfp; TYPE_1__* socket_ops; scalar_t__ registered; } ;
struct TYPE_2__ {int (* stop ) (int ) ;} ;


 int stub1 (int ) ;

void sfp_upstream_stop(struct sfp_bus *bus)
{
 if (bus->registered)
  bus->socket_ops->stop(bus->sfp);
 bus->started = 0;
}

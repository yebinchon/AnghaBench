
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfp_upstream_ops {int (* connect_phy ) (int ,scalar_t__) ;int (* attach ) (int ,struct sfp_bus*) ;int (* link_down ) (int ) ;} ;
struct sfp_bus {int registered; int upstream; struct sfp_upstream_ops* upstream_ops; int sfp; TYPE_1__* socket_ops; scalar_t__ started; scalar_t__ phydev; } ;
struct TYPE_2__ {int (* start ) (int ) ;int (* attach ) (int ) ;} ;


 int stub1 (int ) ;
 int stub2 (int ,scalar_t__) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int ,struct sfp_bus*) ;

__attribute__((used)) static int sfp_register_bus(struct sfp_bus *bus)
{
 const struct sfp_upstream_ops *ops = bus->upstream_ops;
 int ret;

 if (ops) {
  if (ops->link_down)
   ops->link_down(bus->upstream);
  if (ops->connect_phy && bus->phydev) {
   ret = ops->connect_phy(bus->upstream, bus->phydev);
   if (ret)
    return ret;
  }
 }
 bus->socket_ops->attach(bus->sfp);
 if (bus->started)
  bus->socket_ops->start(bus->sfp);
 bus->upstream_ops->attach(bus->upstream, bus);
 bus->registered = 1;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfp_upstream_ops {int (* disconnect_phy ) (int ) ;int (* detach ) (int ,struct sfp_bus*) ;} ;
struct sfp_bus {int registered; int upstream; scalar_t__ phydev; int sfp; TYPE_1__* socket_ops; scalar_t__ started; struct sfp_upstream_ops* upstream_ops; } ;
struct TYPE_2__ {int (* detach ) (int ) ;int (* stop ) (int ) ;} ;


 int stub1 (int ,struct sfp_bus*) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;

__attribute__((used)) static void sfp_unregister_bus(struct sfp_bus *bus)
{
 const struct sfp_upstream_ops *ops = bus->upstream_ops;

 if (bus->registered) {
  bus->upstream_ops->detach(bus->upstream, bus);
  if (bus->started)
   bus->socket_ops->stop(bus->sfp);
  bus->socket_ops->detach(bus->sfp);
  if (bus->phydev && ops && ops->disconnect_phy)
   ops->disconnect_phy(bus->upstream);
 }
 bus->registered = 0;
}

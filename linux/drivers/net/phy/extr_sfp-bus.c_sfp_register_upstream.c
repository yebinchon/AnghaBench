
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_upstream_ops {int dummy; } ;
struct sfp_bus {scalar_t__ sfp; void* upstream; struct sfp_upstream_ops const* upstream_ops; } ;
struct fwnode_handle {int dummy; } ;


 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct sfp_bus* sfp_bus_get (struct fwnode_handle*) ;
 int sfp_bus_put (struct sfp_bus*) ;
 int sfp_register_bus (struct sfp_bus*) ;
 int sfp_upstream_clear (struct sfp_bus*) ;

struct sfp_bus *sfp_register_upstream(struct fwnode_handle *fwnode,
          void *upstream,
          const struct sfp_upstream_ops *ops)
{
 struct sfp_bus *bus = sfp_bus_get(fwnode);
 int ret = 0;

 if (bus) {
  rtnl_lock();
  bus->upstream_ops = ops;
  bus->upstream = upstream;

  if (bus->sfp) {
   ret = sfp_register_bus(bus);
   if (ret)
    sfp_upstream_clear(bus);
  }
  rtnl_unlock();
 }

 if (ret) {
  sfp_bus_put(bus);
  bus = ((void*)0);
 }

 return bus;
}

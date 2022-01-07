
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_socket_ops {int dummy; } ;
struct sfp_bus {scalar_t__ upstream_ops; struct sfp_socket_ops const* socket_ops; struct sfp* sfp; struct device* sfp_dev; } ;
struct sfp {int dummy; } ;
struct device {int fwnode; } ;


 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct sfp_bus* sfp_bus_get (int ) ;
 int sfp_bus_put (struct sfp_bus*) ;
 int sfp_register_bus (struct sfp_bus*) ;
 int sfp_socket_clear (struct sfp_bus*) ;

struct sfp_bus *sfp_register_socket(struct device *dev, struct sfp *sfp,
        const struct sfp_socket_ops *ops)
{
 struct sfp_bus *bus = sfp_bus_get(dev->fwnode);
 int ret = 0;

 if (bus) {
  rtnl_lock();
  bus->sfp_dev = dev;
  bus->sfp = sfp;
  bus->socket_ops = ops;

  if (bus->upstream_ops) {
   ret = sfp_register_bus(bus);
   if (ret)
    sfp_socket_clear(bus);
  }
  rtnl_unlock();
 }

 if (ret) {
  sfp_bus_put(bus);
  bus = ((void*)0);
 }

 return bus;
}

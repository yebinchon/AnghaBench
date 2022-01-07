
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_bus {scalar_t__ upstream_ops; } ;


 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sfp_bus_put (struct sfp_bus*) ;
 int sfp_socket_clear (struct sfp_bus*) ;
 int sfp_unregister_bus (struct sfp_bus*) ;

void sfp_unregister_socket(struct sfp_bus *bus)
{
 rtnl_lock();
 if (bus->upstream_ops)
  sfp_unregister_bus(bus);
 sfp_socket_clear(bus);
 rtnl_unlock();

 sfp_bus_put(bus);
}

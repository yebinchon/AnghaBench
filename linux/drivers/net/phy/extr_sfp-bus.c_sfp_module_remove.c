
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_upstream_ops {int (* module_remove ) (int ) ;} ;
struct sfp_bus {int upstream; } ;


 struct sfp_upstream_ops* sfp_get_upstream_ops (struct sfp_bus*) ;
 int stub1 (int ) ;

void sfp_module_remove(struct sfp_bus *bus)
{
 const struct sfp_upstream_ops *ops = sfp_get_upstream_ops(bus);

 if (ops && ops->module_remove)
  ops->module_remove(bus->upstream);
}

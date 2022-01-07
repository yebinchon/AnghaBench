
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_upstream_ops {int (* link_down ) (int ) ;} ;
struct sfp_bus {int upstream; } ;


 struct sfp_upstream_ops* sfp_get_upstream_ops (struct sfp_bus*) ;
 int stub1 (int ) ;

void sfp_link_down(struct sfp_bus *bus)
{
 const struct sfp_upstream_ops *ops = sfp_get_upstream_ops(bus);

 if (ops && ops->link_down)
  ops->link_down(bus->upstream);
}

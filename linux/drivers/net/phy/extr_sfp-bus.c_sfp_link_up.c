
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_upstream_ops {int (* link_up ) (int ) ;} ;
struct sfp_bus {int upstream; } ;


 struct sfp_upstream_ops* sfp_get_upstream_ops (struct sfp_bus*) ;
 int stub1 (int ) ;

void sfp_link_up(struct sfp_bus *bus)
{
 const struct sfp_upstream_ops *ops = sfp_get_upstream_ops(bus);

 if (ops && ops->link_up)
  ops->link_up(bus->upstream);
}

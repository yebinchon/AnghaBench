
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfp_bus {int sfp; TYPE_1__* socket_ops; } ;
struct ethtool_modinfo {int dummy; } ;
struct TYPE_2__ {int (* module_info ) (int ,struct ethtool_modinfo*) ;} ;


 int stub1 (int ,struct ethtool_modinfo*) ;

int sfp_get_module_info(struct sfp_bus *bus, struct ethtool_modinfo *modinfo)
{
 return bus->socket_ops->module_info(bus->sfp, modinfo);
}

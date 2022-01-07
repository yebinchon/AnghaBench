
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sfp_bus {int sfp; TYPE_1__* socket_ops; } ;
struct ethtool_eeprom {int dummy; } ;
struct TYPE_2__ {int (* module_eeprom ) (int ,struct ethtool_eeprom*,int *) ;} ;


 int stub1 (int ,struct ethtool_eeprom*,int *) ;

int sfp_get_module_eeprom(struct sfp_bus *bus, struct ethtool_eeprom *ee,
     u8 *data)
{
 return bus->socket_ops->module_eeprom(bus->sfp, ee, data);
}

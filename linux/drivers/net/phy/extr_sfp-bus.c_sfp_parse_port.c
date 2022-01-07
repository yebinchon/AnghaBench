
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connector; int e1000_base_t; } ;
struct sfp_eeprom_id {TYPE_1__ base; } ;
struct sfp_bus {int sfp_dev; } ;


 int FIBRE ;
 int PORT_DA ;

 int PORT_OTHER ;
 int TP ;
 int dev_warn (int ,char*,int) ;
 int phylink_set (unsigned long*,int ) ;

int sfp_parse_port(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
     unsigned long *support)
{
 int port;


 switch (id->base.connector) {
 case 130:
 case 141:
 case 139:
 case 136:
 case 135:
 case 132:
  port = 144;
  break;

 case 131:
  port = 143;
  break;

 case 142:
  port = PORT_DA;
  break;

 case 128:
  if (id->base.e1000_base_t) {
   port = 143;
   break;
  }

 case 129:
 case 138:
 case 137:
 case 140:
 case 133:
 case 134:
  port = PORT_OTHER;
  break;
 default:
  dev_warn(bus->sfp_dev, "SFP: unknown connector id 0x%02x\n",
    id->base.connector);
  port = PORT_OTHER;
  break;
 }

 if (support) {
  switch (port) {
  case 144:
   phylink_set(support, FIBRE);
   break;

  case 143:
   phylink_set(support, TP);
   break;
  }
 }

 return port;
}

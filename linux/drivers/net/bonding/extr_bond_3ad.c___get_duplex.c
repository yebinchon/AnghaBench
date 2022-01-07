
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slave {scalar_t__ link; int duplex; int dev; TYPE_1__* bond; } ;
struct port {int actor_port_number; struct slave* slave; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BOND_LINK_UP ;


 int slave_dbg (int ,int ,char*,int ) ;

__attribute__((used)) static u8 __get_duplex(struct port *port)
{
 struct slave *slave = port->slave;
 u8 retval = 0x0;




 if (slave->link == BOND_LINK_UP) {
  switch (slave->duplex) {
  case 129:
   retval = 0x1;
   slave_dbg(slave->bond->dev, slave->dev, "Port %d Received status full duplex update from adapter\n",
      port->actor_port_number);
   break;
  case 128:
  default:
   retval = 0x0;
   slave_dbg(slave->bond->dev, slave->dev, "Port %d Received status NOT full duplex update from adapter\n",
      port->actor_port_number);
   break;
  }
 }
 return retval;
}

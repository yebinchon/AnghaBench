
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct slave {scalar_t__ link; int speed; TYPE_3__* dev; TYPE_1__* bond; } ;
struct port {int actor_port_number; struct slave* slave; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {TYPE_2__* dev; } ;


 scalar_t__ AD_LINK_SPEED_100000MBPS ;
 scalar_t__ AD_LINK_SPEED_10000MBPS ;
 scalar_t__ AD_LINK_SPEED_1000MBPS ;
 scalar_t__ AD_LINK_SPEED_100MBPS ;
 scalar_t__ AD_LINK_SPEED_10MBPS ;
 scalar_t__ AD_LINK_SPEED_14000MBPS ;
 scalar_t__ AD_LINK_SPEED_20000MBPS ;
 scalar_t__ AD_LINK_SPEED_25000MBPS ;
 scalar_t__ AD_LINK_SPEED_2500MBPS ;
 scalar_t__ AD_LINK_SPEED_40000MBPS ;
 scalar_t__ AD_LINK_SPEED_50000MBPS ;
 scalar_t__ AD_LINK_SPEED_5000MBPS ;
 scalar_t__ AD_LINK_SPEED_56000MBPS ;
 scalar_t__ BOND_LINK_UP ;
 int SPEED_UNKNOWN ;
 int pr_warn_once (char*,int ,int ,int,int ) ;
 int slave_dbg (TYPE_2__*,TYPE_3__*,char*,int ,scalar_t__) ;

__attribute__((used)) static u16 __get_link_speed(struct port *port)
{
 struct slave *slave = port->slave;
 u16 speed;






 if (slave->link != BOND_LINK_UP)
  speed = 0;
 else {
  switch (slave->speed) {
  case 140:
   speed = AD_LINK_SPEED_10MBPS;
   break;

  case 139:
   speed = AD_LINK_SPEED_100MBPS;
   break;

  case 138:
   speed = AD_LINK_SPEED_1000MBPS;
   break;

  case 133:
   speed = AD_LINK_SPEED_2500MBPS;
   break;

  case 130:
   speed = AD_LINK_SPEED_5000MBPS;
   break;

  case 137:
   speed = AD_LINK_SPEED_10000MBPS;
   break;

  case 135:
   speed = AD_LINK_SPEED_14000MBPS;
   break;

  case 134:
   speed = AD_LINK_SPEED_20000MBPS;
   break;

  case 132:
   speed = AD_LINK_SPEED_25000MBPS;
   break;

  case 131:
   speed = AD_LINK_SPEED_40000MBPS;
   break;

  case 129:
   speed = AD_LINK_SPEED_50000MBPS;
   break;

  case 128:
   speed = AD_LINK_SPEED_56000MBPS;
   break;

  case 136:
   speed = AD_LINK_SPEED_100000MBPS;
   break;

  default:

   if (slave->speed != SPEED_UNKNOWN)
    pr_warn_once("%s: (slave %s): unknown ethtool speed (%d) for port %d (set it to 0)\n",
          slave->bond->dev->name,
          slave->dev->name, slave->speed,
          port->actor_port_number);
   speed = 0;
   break;
  }
 }

 slave_dbg(slave->bond->dev, slave->dev, "Port %d Received link speed %d update from adapter\n",
    port->actor_port_number, speed);
 return speed;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct port {TYPE_1__* aggregator; int actor_port_number; TYPE_3__* slave; } ;
struct TYPE_6__ {int dev; TYPE_2__* bond; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int aggregator_identifier; int partner_system; } ;


 int MAC_ADDRESS_EQUAL (int *,int *) ;
 int __disable_port (struct port*) ;
 int null_mac_addr ;
 int slave_dbg (int ,int ,char*,int ,int ) ;

__attribute__((used)) static void ad_disable_collecting_distributing(struct port *port,
            bool *update_slave_arr)
{
 if (port->aggregator &&
     !MAC_ADDRESS_EQUAL(&(port->aggregator->partner_system),
          &(null_mac_addr))) {
  slave_dbg(port->slave->bond->dev, port->slave->dev,
     "Disabling port %d (LAG %d)\n",
     port->actor_port_number,
     port->aggregator->aggregator_identifier);
  __disable_port(port);

  *update_slave_arr = 1;
 }
}

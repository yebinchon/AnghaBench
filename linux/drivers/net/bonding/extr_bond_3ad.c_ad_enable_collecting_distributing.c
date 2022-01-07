
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct port {TYPE_3__* aggregator; int actor_port_number; TYPE_2__* slave; } ;
struct TYPE_6__ {int aggregator_identifier; scalar_t__ is_active; } ;
struct TYPE_5__ {int dev; TYPE_1__* bond; } ;
struct TYPE_4__ {int dev; } ;


 int __enable_port (struct port*) ;
 int slave_dbg (int ,int ,char*,int ,int ) ;

__attribute__((used)) static void ad_enable_collecting_distributing(struct port *port,
           bool *update_slave_arr)
{
 if (port->aggregator->is_active) {
  slave_dbg(port->slave->bond->dev, port->slave->dev,
     "Enabling port %d (LAG %d)\n",
     port->actor_port_number,
     port->aggregator->aggregator_identifier);
  __enable_port(port);

  *update_slave_arr = 1;
 }
}

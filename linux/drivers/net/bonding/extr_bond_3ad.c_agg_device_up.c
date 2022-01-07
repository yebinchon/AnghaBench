
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port {TYPE_1__* slave; struct port* next_port_in_aggregator; } ;
struct aggregator {struct port* lag_ports; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ netif_carrier_ok (int ) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static int agg_device_up(const struct aggregator *agg)
{
 struct port *port = agg->lag_ports;

 if (!port)
  return 0;

 for (port = agg->lag_ports; port;
      port = port->next_port_in_aggregator) {
  if (netif_running(port->slave->dev) &&
      netif_carrier_ok(port->slave->dev))
   return 1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {scalar_t__ is_enabled; struct port* next_port_in_aggregator; } ;
struct aggregator {struct port* lag_ports; } ;



__attribute__((used)) static int __agg_active_ports(struct aggregator *agg)
{
 struct port *port;
 int active = 0;

 for (port = agg->lag_ports; port;
      port = port->next_port_in_aggregator) {
  if (port->is_enabled)
   active++;
 }

 return active;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {scalar_t__ has_tx_irqs; } ;
struct device_node {int dummy; } ;


 int mvpp2_multi_queue_vectors_init (struct mvpp2_port*,struct device_node*) ;
 int mvpp2_simple_queue_vectors_init (struct mvpp2_port*,struct device_node*) ;

__attribute__((used)) static int mvpp2_queue_vectors_init(struct mvpp2_port *port,
        struct device_node *port_node)
{
 if (port->has_tx_irqs)
  return mvpp2_multi_queue_vectors_init(port, port_node);
 else
  return mvpp2_simple_queue_vectors_init(port, port_node);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {int ntxqs; int dev; scalar_t__ link_irq; TYPE_1__** txqs; int stats; int pcpu; scalar_t__ phylink; } ;
struct TYPE_2__ {int pcpu; } ;


 int free_netdev (int ) ;
 int free_percpu (int ) ;
 int irq_dispose_mapping (scalar_t__) ;
 int mvpp2_queue_vectors_deinit (struct mvpp2_port*) ;
 int phylink_destroy (scalar_t__) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void mvpp2_port_remove(struct mvpp2_port *port)
{
 int i;

 unregister_netdev(port->dev);
 if (port->phylink)
  phylink_destroy(port->phylink);
 free_percpu(port->pcpu);
 free_percpu(port->stats);
 for (i = 0; i < port->ntxqs; i++)
  free_percpu(port->txqs[i]->pcpu);
 mvpp2_queue_vectors_deinit(port);
 if (port->link_irq)
  irq_dispose_mapping(port->link_irq);
 free_netdev(port->dev);
}

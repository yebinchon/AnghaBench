
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {int nqvecs; TYPE_1__* qvecs; } ;
struct TYPE_2__ {int irq; } ;


 int irq_dispose_mapping (int ) ;

__attribute__((used)) static void mvpp2_queue_vectors_deinit(struct mvpp2_port *port)
{
 int i;

 for (i = 0; i < port->nqvecs; i++)
  irq_dispose_mapping(port->qvecs[i].irq);
}

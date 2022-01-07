
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port {TYPE_1__* plat; int id; } ;
struct TYPE_2__ {int txreadyq; int rxq; } ;


 int RXFREE_QUEUE (int ) ;
 int TXDONE_QUEUE ;
 int TX_QUEUE (int ) ;
 int ports_open ;
 int qmgr_release_queue (int ) ;

__attribute__((used)) static void release_queues(struct port *port)
{
 qmgr_release_queue(RXFREE_QUEUE(port->id));
 qmgr_release_queue(port->plat->rxq);
 qmgr_release_queue(TX_QUEUE(port->id));
 qmgr_release_queue(port->plat->txreadyq);

 if (!ports_open)
  qmgr_release_queue(TXDONE_QUEUE);
}

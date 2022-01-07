
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port {size_t id; TYPE_1__* plat; } ;
struct TYPE_4__ {int tx; int txdone; int rx; int rxfree; } ;
struct TYPE_3__ {int txreadyq; } ;


 int qmgr_release_queue (int ) ;
 TYPE_2__* queue_ids ;

__attribute__((used)) static void release_hdlc_queues(struct port *port)
{
 qmgr_release_queue(queue_ids[port->id].rxfree);
 qmgr_release_queue(queue_ids[port->id].rx);
 qmgr_release_queue(queue_ids[port->id].txdone);
 qmgr_release_queue(queue_ids[port->id].tx);
 qmgr_release_queue(port->plat->txreadyq);
}

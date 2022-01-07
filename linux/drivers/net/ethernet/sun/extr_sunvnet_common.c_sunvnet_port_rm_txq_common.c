
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnet_port {size_t q_index; TYPE_1__* vp; } ;
struct TYPE_2__ {int * q_used; int nports; } ;



void sunvnet_port_rm_txq_common(struct vnet_port *port)
{
 port->vp->nports--;
 port->vp->q_used[port->q_index]--;
 port->q_index = 0;
}

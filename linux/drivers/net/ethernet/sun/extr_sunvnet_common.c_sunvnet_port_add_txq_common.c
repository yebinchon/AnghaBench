
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet_port {int q_index; struct vnet* vp; } ;
struct vnet {scalar_t__* q_used; int nports; } ;


 int VNET_MAX_TXQS ;

void sunvnet_port_add_txq_common(struct vnet_port *port)
{
 struct vnet *vp = port->vp;
 int smallest = 0;
 int i;





 for (i = 0; i < VNET_MAX_TXQS; i++) {
  if (vp->q_used[i] == 0) {
   smallest = i;
   break;
  }
  if (vp->q_used[i] < vp->q_used[smallest])
   smallest = i;
 }

 vp->nports++;
 vp->q_used[smallest]++;
 port->q_index = smallest;
}

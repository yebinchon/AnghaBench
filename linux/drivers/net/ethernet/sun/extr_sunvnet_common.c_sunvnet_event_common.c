
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_driver_state {TYPE_1__* vdev; } ;
struct vnet_port {int rx_event; int napi; struct vio_driver_state vio; } ;
struct TYPE_2__ {int rx_ino; } ;


 int HV_INTR_DISABLED ;
 int napi_schedule (int *) ;
 int vio_set_intr (int ,int ) ;

void sunvnet_event_common(void *arg, int event)
{
 struct vnet_port *port = arg;
 struct vio_driver_state *vio = &port->vio;

 port->rx_event |= event;
 vio_set_intr(vio->vdev->rx_ino, HV_INTR_DISABLED);
 napi_schedule(&port->napi);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int hs_state; } ;
struct vnet_port {struct vio_driver_state vio; } ;


 int VIO_HS_COMPLETE ;

bool sunvnet_port_is_up_common(struct vnet_port *vnet)
{
 struct vio_driver_state *vio = &vnet->vio;

 return !!(vio->hs_state & VIO_HS_COMPLETE);
}

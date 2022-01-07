
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int lp; struct vio_net_desc* desc_buf; } ;
struct vnet_port {TYPE_1__ vio; } ;
struct vio_net_desc {int dummy; } ;
struct vio_dring_state {int entry_size; int ncookies; int cookies; } ;


 struct vio_net_desc* ERR_PTR (int) ;
 int ldc_get_dring_entry (int ,struct vio_net_desc*,int,int,int ,int ) ;

__attribute__((used)) static struct vio_net_desc *get_rx_desc(struct vnet_port *port,
     struct vio_dring_state *dr,
     u32 index)
{
 struct vio_net_desc *desc = port->vio.desc_buf;
 int err;

 err = ldc_get_dring_entry(port->vio.lp, desc, dr->entry_size,
      (index * dr->entry_size),
      dr->cookies, dr->ncookies);
 if (err < 0)
  return ERR_PTR(err);

 return desc;
}

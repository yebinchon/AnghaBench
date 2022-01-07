
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lp; struct vio_dring_state* drings; } ;
struct vnet_port {TYPE_3__ vio; TYPE_1__* tx_bufs; } ;
struct TYPE_5__ {int state; } ;
struct vio_net_desc {TYPE_2__ hdr; } ;
struct vio_dring_state {int entry_size; int num_entries; scalar_t__ ncookies; scalar_t__ pending; int * base; int cookies; } ;
struct TYPE_4__ {int * skb; int ncookies; int cookies; } ;


 int VIO_DESC_FREE ;
 size_t VIO_DRIVER_TX_RING ;
 int VNET_TX_RING_SIZE ;
 int dev_kfree_skb (void*) ;
 int ldc_free_exp_dring (int ,int *,int,int ,scalar_t__) ;
 int ldc_unmap (int ,int ,int ) ;
 struct vio_net_desc* vio_dring_entry (struct vio_dring_state*,int) ;

void sunvnet_port_free_tx_bufs_common(struct vnet_port *port)
{
 struct vio_dring_state *dr;
 int i;

 dr = &port->vio.drings[VIO_DRIVER_TX_RING];

 if (!dr->base)
  return;

 for (i = 0; i < VNET_TX_RING_SIZE; i++) {
  struct vio_net_desc *d;
  void *skb = port->tx_bufs[i].skb;

  if (!skb)
   continue;

  d = vio_dring_entry(dr, i);

  ldc_unmap(port->vio.lp,
     port->tx_bufs[i].cookies,
     port->tx_bufs[i].ncookies);
  dev_kfree_skb(skb);
  port->tx_bufs[i].skb = ((void*)0);
  d->hdr.state = VIO_DESC_FREE;
 }
 ldc_free_exp_dring(port->vio.lp, dr->base,
      (dr->entry_size * dr->num_entries),
      dr->cookies, dr->ncookies);
 dr->base = ((void*)0);
 dr->entry_size = 0;
 dr->num_entries = 0;
 dr->pending = 0;
 dr->ncookies = 0;
}

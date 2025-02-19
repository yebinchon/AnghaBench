
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int _peer_sid; int _local_sid; struct vio_dring_state* drings; } ;
struct vnet_port {int start_cons; int q_index; TYPE_2__ vio; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct vio_net_desc {TYPE_3__ hdr; } ;
struct vio_dring_state {int cons; } ;
struct TYPE_4__ {scalar_t__ stype_env; } ;
struct vio_dring_data {int end_idx; TYPE_1__ tag; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ VIO_DESC_READY ;
 scalar_t__ VIO_DRING_DATA ;
 size_t VIO_DRIVER_TX_RING ;
 struct net_device* VNET_PORT_TO_NET_DEVICE (struct vnet_port*) ;
 scalar_t__ VNET_TX_WAKEUP_THRESH (struct vio_dring_state*) ;
 scalar_t__ __vnet_tx_trigger (struct vnet_port*,int ) ;
 int idx_is_pending (struct vio_dring_state*,int ) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int netif_tx_lock (struct net_device*) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_unlock (struct net_device*) ;
 int trace_vnet_rx_stopped_ack (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;
 struct vio_net_desc* vio_dring_entry (struct vio_dring_state*,int ) ;
 int vio_dring_next (struct vio_dring_state*,int ) ;
 scalar_t__ vnet_tx_dring_avail (struct vio_dring_state*) ;

__attribute__((used)) static int vnet_ack(struct vnet_port *port, void *msgbuf)
{
 struct vio_dring_state *dr = &port->vio.drings[VIO_DRIVER_TX_RING];
 struct vio_dring_data *pkt = msgbuf;
 struct net_device *dev;
 u32 end;
 struct vio_net_desc *desc;
 struct netdev_queue *txq;

 if (unlikely(pkt->tag.stype_env != VIO_DRING_DATA))
  return 0;

 end = pkt->end_idx;
 dev = VNET_PORT_TO_NET_DEVICE(port);
 netif_tx_lock(dev);
 if (unlikely(!idx_is_pending(dr, end))) {
  netif_tx_unlock(dev);
  return 0;
 }




 trace_vnet_rx_stopped_ack(port->vio._local_sid,
      port->vio._peer_sid, end);
 dr->cons = vio_dring_next(dr, end);
 desc = vio_dring_entry(dr, dr->cons);
 if (desc->hdr.state == VIO_DESC_READY && !port->start_cons) {




  if (__vnet_tx_trigger(port, dr->cons) > 0)
   port->start_cons = 0;
  else
   port->start_cons = 1;
 } else {
  port->start_cons = 1;
 }
 netif_tx_unlock(dev);

 txq = netdev_get_tx_queue(dev, port->q_index);
 if (unlikely(netif_tx_queue_stopped(txq) &&
       vnet_tx_dring_avail(dr) >= VNET_TX_WAKEUP_THRESH(dr)))
  return 1;

 return 0;
}

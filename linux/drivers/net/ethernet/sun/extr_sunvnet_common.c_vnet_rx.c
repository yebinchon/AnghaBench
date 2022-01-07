
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_driver_state {struct vio_dring_state* drings; } ;
struct vnet_port {int napi_resume; struct vio_driver_state vio; } ;
struct vio_dring_state {scalar_t__ rcv_nxt; } ;
struct TYPE_2__ {scalar_t__ stype_env; } ;
struct vio_dring_data {scalar_t__ seq; int end_idx; int start_idx; TYPE_1__ tag; } ;


 int DATA ;
 scalar_t__ VIO_DRING_DATA ;
 size_t VIO_DRIVER_RX_RING ;
 int pr_err (char*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int viodbg (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int vnet_walk_rx (struct vnet_port*,struct vio_dring_state*,int ,int ,int*,int) ;

__attribute__((used)) static int vnet_rx(struct vnet_port *port, void *msgbuf, int *npkts,
     int budget)
{
 struct vio_dring_data *pkt = msgbuf;
 struct vio_dring_state *dr = &port->vio.drings[VIO_DRIVER_RX_RING];
 struct vio_driver_state *vio = &port->vio;

 viodbg(DATA, "vnet_rx stype_env[%04x] seq[%016llx] rcv_nxt[%016llx]\n",
        pkt->tag.stype_env, pkt->seq, dr->rcv_nxt);

 if (unlikely(pkt->tag.stype_env != VIO_DRING_DATA))
  return 0;
 if (unlikely(pkt->seq != dr->rcv_nxt)) {
  pr_err("RX out of sequence seq[0x%llx] rcv_nxt[0x%llx]\n",
         pkt->seq, dr->rcv_nxt);
  return 0;
 }

 if (!port->napi_resume)
  dr->rcv_nxt++;



 return vnet_walk_rx(port, dr, pkt->start_idx, pkt->end_idx,
       npkts, budget);
}

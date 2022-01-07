
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int port; int node; } ;
struct scif_endpt {size_t state; int lock; int conn_async_state; TYPE_1__ port; } ;
typedef scalar_t__ scif_epd_t ;
struct TYPE_5__ {int this_device; } ;
struct TYPE_6__ {TYPE_2__ mdev; int nodeid; } ;


 int ASYNC_CONN_IDLE ;
 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EINVAL ;
 int EISCONN ;
 size_t SCIFEP_BOUND ;
 size_t SCIFEP_UNBOUND ;
 int SCIF_ADMIN_PORT_END ;
 int capable (int ) ;
 int dev_dbg (int ,char*,...) ;
 int * scif_ep_states ;
 int scif_get_new_port () ;
 TYPE_3__ scif_info ;
 int scif_rsrv_port (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int scif_bind(scif_epd_t epd, u16 pn)
{
 struct scif_endpt *ep = (struct scif_endpt *)epd;
 int ret = 0;
 int tmp;

 dev_dbg(scif_info.mdev.this_device,
  "SCIFAPI bind: ep %p %s requested port number %d\n",
  ep, scif_ep_states[ep->state], pn);
 if (pn) {





  if (pn < SCIF_ADMIN_PORT_END && !capable(CAP_SYS_ADMIN)) {
   ret = -EACCES;
   goto scif_bind_admin_exit;
  }
 }

 spin_lock(&ep->lock);
 if (ep->state == SCIFEP_BOUND) {
  ret = -EINVAL;
  goto scif_bind_exit;
 } else if (ep->state != SCIFEP_UNBOUND) {
  ret = -EISCONN;
  goto scif_bind_exit;
 }

 if (pn) {
  tmp = scif_rsrv_port(pn);
  if (tmp != pn) {
   ret = -EINVAL;
   goto scif_bind_exit;
  }
 } else {
  ret = scif_get_new_port();
  if (ret < 0)
   goto scif_bind_exit;
  pn = ret;
 }

 ep->state = SCIFEP_BOUND;
 ep->port.node = scif_info.nodeid;
 ep->port.port = pn;
 ep->conn_async_state = ASYNC_CONN_IDLE;
 ret = pn;
 dev_dbg(scif_info.mdev.this_device,
  "SCIFAPI bind: bound to port number %d\n", pn);
scif_bind_exit:
 spin_unlock(&ep->lock);
scif_bind_admin_exit:
 return ret;
}

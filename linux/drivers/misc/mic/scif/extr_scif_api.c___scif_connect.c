
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scif_port_id {size_t node; } ;
struct TYPE_9__ {TYPE_3__* qp; } ;
struct TYPE_7__ {int port; int node; } ;
struct scif_endpt {size_t state; scalar_t__ conn_async_state; int conn_err; int lock; int conn_list; int conn_pend_wq; TYPE_4__ qp_info; struct scif_dev* remote_dev; int conwq; int recvwq; int sendwq; struct scif_port_id conn_port; TYPE_2__ port; } ;
struct scif_dev {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ scif_epd_t ;
struct TYPE_6__ {int this_device; } ;
struct TYPE_10__ {size_t maxid; int conn_work; int nb_connect_lock; int nb_connect_list; int nodeid; TYPE_1__ mdev; } ;
struct TYPE_8__ {int magic; } ;


 scalar_t__ ASYNC_CONN_FLUSH_WORK ;
 void* ASYNC_CONN_IDLE ;
 scalar_t__ ASYNC_CONN_INPROGRESS ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int ENODEV ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;







 int SCIFEP_MAGIC ;



 int dev_dbg (int ,char*,struct scif_endpt*,int ) ;
 int flush_work (int *) ;
 int init_waitqueue_head (int *) ;
 int list_add_tail (int *,int *) ;
 int might_sleep () ;
 int schedule_work (int *) ;
 int scif_conn_func (struct scif_endpt*) ;
 struct scif_dev* scif_dev ;
 int * scif_ep_states ;
 int scif_get_new_port () ;
 struct device* scif_get_peer_dev (struct scif_dev*) ;
 TYPE_5__ scif_info ;
 int scif_put_peer_dev (struct device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlikely (int) ;

int __scif_connect(scif_epd_t epd, struct scif_port_id *dst, bool non_block)
{
 struct scif_endpt *ep = (struct scif_endpt *)epd;
 int err = 0;
 struct scif_dev *remote_dev;
 struct device *spdev;

 dev_dbg(scif_info.mdev.this_device, "SCIFAPI connect: ep %p %s\n", ep,
  scif_ep_states[ep->state]);

 if (!scif_dev || dst->node > scif_info.maxid)
  return -ENODEV;

 might_sleep();

 remote_dev = &scif_dev[dst->node];
 spdev = scif_get_peer_dev(remote_dev);
 if (IS_ERR(spdev)) {
  err = PTR_ERR(spdev);
  return err;
 }

 spin_lock(&ep->lock);
 switch (ep->state) {
 case 128:
 case 135:
  err = -EINVAL;
  break;
 case 132:
  if (ep->conn_async_state == ASYNC_CONN_INPROGRESS)
   ep->conn_async_state = ASYNC_CONN_FLUSH_WORK;
  else
   err = -EINVAL;
  break;
 case 131:
 case 136:
  err = -EOPNOTSUPP;
  break;
 case 133:
 case 130:
  if (ep->conn_async_state == ASYNC_CONN_INPROGRESS)
   err = -EINPROGRESS;
  else
   err = -EISCONN;
  break;
 case 134:
  if (ep->conn_async_state == ASYNC_CONN_INPROGRESS)
   ep->conn_async_state = ASYNC_CONN_FLUSH_WORK;
  else
   err = -EISCONN;
  break;
 case 129:
  err = scif_get_new_port();
  if (err < 0)
   break;
  ep->port.port = err;
  ep->port.node = scif_info.nodeid;
  ep->conn_async_state = ASYNC_CONN_IDLE;

 case 137:
  if (ep->conn_async_state == ASYNC_CONN_INPROGRESS) {
   ep->conn_async_state = ASYNC_CONN_FLUSH_WORK;
  } else if (ep->conn_async_state == ASYNC_CONN_FLUSH_WORK) {
   err = -EINPROGRESS;
  } else {
   ep->conn_port = *dst;
   init_waitqueue_head(&ep->sendwq);
   init_waitqueue_head(&ep->recvwq);
   init_waitqueue_head(&ep->conwq);
   ep->conn_async_state = 0;

   if (unlikely(non_block))
    ep->conn_async_state = ASYNC_CONN_INPROGRESS;
  }
  break;
 }

 if (err || ep->conn_async_state == ASYNC_CONN_FLUSH_WORK)
   goto connect_simple_unlock1;

 ep->state = 133;
 ep->remote_dev = &scif_dev[dst->node];
 ep->qp_info.qp->magic = SCIFEP_MAGIC;
 if (ep->conn_async_state == ASYNC_CONN_INPROGRESS) {
  init_waitqueue_head(&ep->conn_pend_wq);
  spin_lock(&scif_info.nb_connect_lock);
  list_add_tail(&ep->conn_list, &scif_info.nb_connect_list);
  spin_unlock(&scif_info.nb_connect_lock);
  err = -EINPROGRESS;
  schedule_work(&scif_info.conn_work);
 }
connect_simple_unlock1:
 spin_unlock(&ep->lock);
 scif_put_peer_dev(spdev);
 if (err) {
  return err;
 } else if (ep->conn_async_state == ASYNC_CONN_FLUSH_WORK) {
  flush_work(&scif_info.conn_work);
  err = ep->conn_err;
  spin_lock(&ep->lock);
  ep->conn_async_state = ASYNC_CONN_IDLE;
  spin_unlock(&ep->lock);
 } else {
  err = scif_conn_func(ep);
 }
 return err;
}

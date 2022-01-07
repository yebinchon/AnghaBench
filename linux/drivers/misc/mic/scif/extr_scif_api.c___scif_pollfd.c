
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* qp; } ;
struct scif_endpt {size_t state; scalar_t__ conn_async_state; int lock; TYPE_3__ qp_info; int sendwq; int recvwq; scalar_t__ conreqcnt; int conwq; scalar_t__ conn_err; int conn_pend_wq; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_5__ {int this_device; } ;
struct TYPE_8__ {TYPE_1__ mdev; } ;
struct TYPE_6__ {int outbound_q; int inbound_q; } ;


 scalar_t__ ASYNC_CONN_INPROGRESS ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 size_t SCIFEP_CONNECTED ;
 size_t SCIFEP_DISCONNECTED ;
 size_t SCIFEP_LISTENING ;
 int _scif_poll_wait (struct file*,int *,int *,struct scif_endpt*) ;
 int dev_dbg (int ,char*,struct scif_endpt*,int ) ;
 int poll_requested_events (int *) ;
 int * scif_ep_states ;
 TYPE_4__ scif_info ;
 scalar_t__ scif_rb_count (int *,int) ;
 scalar_t__ scif_rb_space (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__poll_t
__scif_pollfd(struct file *f, poll_table *wait, struct scif_endpt *ep)
{
 __poll_t mask = 0;

 dev_dbg(scif_info.mdev.this_device,
  "SCIFAPI pollfd: ep %p %s\n", ep, scif_ep_states[ep->state]);

 spin_lock(&ep->lock);


 if (ep->conn_async_state == ASYNC_CONN_INPROGRESS) {
  _scif_poll_wait(f, &ep->conn_pend_wq, wait, ep);
  if (ep->conn_async_state == ASYNC_CONN_INPROGRESS) {
   if (ep->state == SCIFEP_CONNECTED ||
       ep->state == SCIFEP_DISCONNECTED ||
       ep->conn_err)
    mask |= EPOLLOUT;
   goto exit;
  }
 }


 if (ep->state == SCIFEP_LISTENING) {
  _scif_poll_wait(f, &ep->conwq, wait, ep);
  if (ep->state == SCIFEP_LISTENING) {
   if (ep->conreqcnt)
    mask |= EPOLLIN;
   goto exit;
  }
 }


 if (ep->state == SCIFEP_CONNECTED || ep->state == SCIFEP_DISCONNECTED) {
  if (poll_requested_events(wait) & EPOLLIN)
   _scif_poll_wait(f, &ep->recvwq, wait, ep);
  if (poll_requested_events(wait) & EPOLLOUT)
   _scif_poll_wait(f, &ep->sendwq, wait, ep);
  if (ep->state == SCIFEP_CONNECTED ||
      ep->state == SCIFEP_DISCONNECTED) {

   if (scif_rb_count(&ep->qp_info.qp->inbound_q, 1))
    mask |= EPOLLIN;

   if (scif_rb_space(&ep->qp_info.qp->outbound_q))
    mask |= EPOLLOUT;

   if (ep->state == SCIFEP_DISCONNECTED)
    mask |= EPOLLHUP;
   goto exit;
  }
 }


 mask |= EPOLLERR;
exit:
 spin_unlock(&ep->lock);
 return mask;
}

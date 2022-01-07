
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct scifmsg {void** payload; int uop; int src; } ;
struct scif_fence_info {void* state; int comp; } ;
struct scif_endpt {scalar_t__ state; int lock; int remote_dev; void* remote_ep; int port; } ;
typedef scalar_t__ scif_epd_t ;
typedef void* off_t ;


 int ENOMEM ;
 int ENOTCONN ;
 int GFP_KERNEL ;
 void* OP_IN_PROGRESS ;
 scalar_t__ SCIFEP_CONNECTED ;
 int SCIF_SIGNAL_LOCAL ;
 int SCIF_SIGNAL_REMOTE ;
 int SCIF_SIG_LOCAL ;
 int SCIF_SIG_REMOTE ;
 int _scif_send_fence_signal_wait (struct scif_endpt*,struct scif_fence_info*) ;
 int init_completion (int *) ;
 int kfree (struct scif_fence_info*) ;
 struct scif_fence_info* kmalloc (int,int ) ;
 int scif_nodeqp_send (int ,struct scifmsg*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int scif_send_fence_signal(scif_epd_t epd, off_t roff, u64 rval,
      off_t loff, u64 lval, int flags)
{
 int err = 0;
 struct scifmsg msg;
 struct scif_fence_info *fence_req;
 struct scif_endpt *ep = (struct scif_endpt *)epd;

 fence_req = kmalloc(sizeof(*fence_req), GFP_KERNEL);
 if (!fence_req) {
  err = -ENOMEM;
  goto error;
 }

 fence_req->state = OP_IN_PROGRESS;
 init_completion(&fence_req->comp);
 msg.src = ep->port;
 if (flags & SCIF_SIGNAL_LOCAL) {
  msg.uop = SCIF_SIG_LOCAL;
  msg.payload[0] = ep->remote_ep;
  msg.payload[1] = roff;
  msg.payload[2] = rval;
  msg.payload[3] = (u64)fence_req;
  spin_lock(&ep->lock);
  if (ep->state == SCIFEP_CONNECTED)
   err = scif_nodeqp_send(ep->remote_dev, &msg);
  else
   err = -ENOTCONN;
  spin_unlock(&ep->lock);
  if (err)
   goto error_free;
  err = _scif_send_fence_signal_wait(ep, fence_req);
  if (err)
   goto error_free;
 }
 fence_req->state = OP_IN_PROGRESS;

 if (flags & SCIF_SIGNAL_REMOTE) {
  msg.uop = SCIF_SIG_REMOTE;
  msg.payload[0] = ep->remote_ep;
  msg.payload[1] = loff;
  msg.payload[2] = lval;
  msg.payload[3] = (u64)fence_req;
  spin_lock(&ep->lock);
  if (ep->state == SCIFEP_CONNECTED)
   err = scif_nodeqp_send(ep->remote_dev, &msg);
  else
   err = -ENOTCONN;
  spin_unlock(&ep->lock);
  if (err)
   goto error_free;
  err = _scif_send_fence_signal_wait(ep, fence_req);
 }
error_free:
 kfree(fence_req);
error:
 return err;
}

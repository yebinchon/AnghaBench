
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct scifmsg {int uop; int* payload; int src; } ;
struct scif_fence_info {scalar_t__ state; int dma_mark; int comp; } ;
struct TYPE_2__ {int rma_lock; } ;
struct scif_endpt {int remote_ep; scalar_t__ state; TYPE_1__ rma_info; int lock; int remote_dev; int port; } ;
typedef scalar_t__ scif_epd_t ;


 int ENODEV ;
 int ENOMEM ;
 int ENOTCONN ;
 int GFP_KERNEL ;
 scalar_t__ OP_COMPLETED ;
 scalar_t__ OP_FAILED ;
 scalar_t__ OP_IN_PROGRESS ;
 scalar_t__ SCIFEP_CONNECTED ;
 int SCIF_MARK ;
 int SCIF_NODE_ALIVE_TIMEOUT ;
 int SCIF_REMOTE_FENCE ;
 int SCIF_WAIT ;
 int init_completion (int *) ;
 int kfree (struct scif_fence_info*) ;
 struct scif_fence_info* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scif_nodeqp_send (int ,struct scifmsg*) ;
 scalar_t__ scifdev_alive (struct scif_endpt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int _scif_send_fence(scif_epd_t epd, int uop, int mark, int *out_mark)
{
 int err;
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
 msg.uop = uop;
 msg.payload[0] = ep->remote_ep;
 msg.payload[1] = (u64)fence_req;
 if (uop == SCIF_WAIT)
  msg.payload[2] = mark;
 spin_lock(&ep->lock);
 if (ep->state == SCIFEP_CONNECTED)
  err = scif_nodeqp_send(ep->remote_dev, &msg);
 else
  err = -ENOTCONN;
 spin_unlock(&ep->lock);
 if (err)
  goto error_free;
retry:

 err = wait_for_completion_timeout(&fence_req->comp,
       SCIF_NODE_ALIVE_TIMEOUT);
 if (!err && scifdev_alive(ep))
  goto retry;
 if (!err)
  err = -ENODEV;
 if (err > 0)
  err = 0;
 mutex_lock(&ep->rma_info.rma_lock);
 if (err < 0) {
  if (fence_req->state == OP_IN_PROGRESS)
   fence_req->state = OP_FAILED;
 }
 if (fence_req->state == OP_FAILED && !err)
  err = -ENOMEM;
 if (uop == SCIF_MARK && fence_req->state == OP_COMPLETED)
  *out_mark = SCIF_REMOTE_FENCE | fence_req->dma_mark;
 mutex_unlock(&ep->rma_info.rma_lock);
error_free:
 kfree(fence_req);
error:
 return err;
}

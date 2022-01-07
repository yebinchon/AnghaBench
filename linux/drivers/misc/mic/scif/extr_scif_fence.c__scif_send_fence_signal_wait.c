
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_fence_info {scalar_t__ state; int comp; } ;
struct TYPE_2__ {int rma_lock; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;


 int ENODEV ;
 int ENXIO ;
 scalar_t__ OP_FAILED ;
 scalar_t__ OP_IN_PROGRESS ;
 int SCIF_NODE_ALIVE_TIMEOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scifdev_alive (struct scif_endpt*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int _scif_send_fence_signal_wait(struct scif_endpt *ep,
     struct scif_fence_info *fence_req)
{
 int err;

retry:

 err = wait_for_completion_timeout(&fence_req->comp,
       SCIF_NODE_ALIVE_TIMEOUT);
 if (!err && scifdev_alive(ep))
  goto retry;
 if (!err)
  err = -ENODEV;
 if (err > 0)
  err = 0;
 if (err < 0) {
  mutex_lock(&ep->rma_info.rma_lock);
  if (fence_req->state == OP_IN_PROGRESS)
   fence_req->state = OP_FAILED;
  mutex_unlock(&ep->rma_info.rma_lock);
 }
 if (fence_req->state == OP_FAILED && !err)
  err = -ENXIO;
 return err;
}
